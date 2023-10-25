import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:http/http.dart' as http;
import '../models/negative.dart';
import '../services/negative_service.dart';


class SecondBar extends StatefulWidget {
  const SecondBar ({super.key});

  @override
  State<SecondBar > createState() => _SecondBarState();
}

class _SecondBarState extends State<SecondBar> {
  TextEditingController _dateController = TextEditingController();
  NegativeService negative = NegativeService();
  DateTime? selectedDate;
   List<BarChartModel> negativeData = [
    BarChartModel(
        'Sun',
        10,
        Colors.red),
    BarChartModel(
        'Mon',
        8,
        Colors.red),
    BarChartModel(
        'Tue',
        3,
        Colors.red),
    BarChartModel(
        'Wed',
        5,
        Colors.red),
    BarChartModel(
        'Thu',
        10,
        Colors.red),
    BarChartModel(
        'Fri',
        5,
        Colors.red),
    BarChartModel(
        'Sat',
        4,
        Colors.red),
  ];
  @override
  void initState() {
    super.initState();
    fetchPositiveReviews();
  }
  List<Negative> positiveList = [];

  Future<void> fetchPositiveReviews({DateTime? selectedDate}) async {
    if (selectedDate == null) {
      // Handle the case when selectedDate is null
      print('Selected date is null.');
      return;
    }

    DateTime startDate = selectedDate.subtract(Duration(days: 6));
    final response = await http.get(Uri.parse(NegativeService.negativeUrl));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);

      final filteredData = jsonData.where((data) {
        final dataDate = data['week'] as String?;
        if (dataDate != null) {
          final parsedDate = DateTime.tryParse(dataDate);
          if (parsedDate != null) {
            return parsedDate.isAfter(startDate) && parsedDate.isBefore(selectedDate.add(Duration(days: 1)));
          }
        }
        return false;
      }).toList();

      final List<BarChartModel> positiveReviews = filteredData.map((data) {
        return BarChartModel(
          data['week'],
          data['reviews'],
          data['colorval'],
        );
      }).toList();

      double average = calculateAverage(positiveReviews);
      setState(() {
        negativeData = positiveReviews;
      });
    } else {
      print('Failed to fetch positive reviews');
    }
  }
  double calculateAverage(List<BarChartModel> data) {
    if (data.isEmpty) {
      return 0.0;
    }

    int sum = 0;
    for (var item in data) {
      sum += item.reviews;
    }

    return sum / data.length.toDouble();
  }


  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel,String>> series = [
      charts.Series(
        id: "Reviews",
        data: negativeData,
        domainFn: (BarChartModel series,_)=>series.week,
        measureFn: (BarChartModel series,_)=>series.reviews,
        fillColorFn: (BarChartModel series,_)=>
            charts.ColorUtil.fromDartColor(series.colorval),
      )];
    double average = calculateAverage(negativeData);
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children:<Widget> [
            Container(
              margin: EdgeInsets.only(bottom: 200.0,left: 15.0),
            ),
            SizedBox(height: 10.0,),
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 50.0,top: 15.0),
                          child: Text("Negative Reviews",style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'RenogareSoft',
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          height: 30.0,
                          width: 150,
                          child: Center(
                            child: TextField(
                              style: TextStyle(color: Colors.black),
                              controller: _dateController,
                              decoration: InputDecoration(
                                filled: true,
                                prefixIcon: Icon(Icons.calendar_today,color: Colors.black,),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.amber)
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                              ),
                              readOnly: true,
                              onTap: (){
                                _selectDate();
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          margin: EdgeInsets.only(right: 90.0,top: 10.0),
                          child: Text("This Week",style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 110.0,top: 7.0),
                          child: Text(average.toStringAsFixed(3),style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'RenogareSoft',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),),
                        ),
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 0.0,top: 5.0),
                                child: Icon(Icons.arrow_circle_up,color: Colors.red,)
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 110.0,top: 6.0),
                              child: Text("+15%",style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'RenogareSoft',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 7,
              child: charts.BarChart(
                series,
                animate: false,
                barGroupingType: charts.BarGroupingType.grouped,
                animationDuration: Duration(seconds: 5),
                barRendererDecorator: new charts.BarLabelDecorator<String>(),
                defaultRenderer: new charts.BarRendererConfig(
                  minBarLengthPx: 4,
                ),
                primaryMeasureAxis: new charts.NumericAxisSpec(
                  renderSpec: charts.NoneRenderSpec(),
                ),
                domainAxis: new charts.OrdinalAxisSpec(
                  renderSpec: charts.NoneRenderSpec(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _selectDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
        _dateController.text = selectedDate!.toString().split(" ")[0];
        fetchPositiveReviews(selectedDate: selectedDate);
      });
    } else {
      print('Date selection canceled.');
    }
  }
}

class BarChartModel{
  String week;
  int reviews;
  Color colorval;
  BarChartModel(this.week,this.reviews,this.colorval);
}
