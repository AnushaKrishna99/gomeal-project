import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:gomeal/services/positive_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/positive.dart';

class BarPage extends StatefulWidget {
  const BarPage({super.key});

  @override
  State<BarPage> createState() => _BarPageState();
}

class _BarPageState extends State<BarPage> {
  TextEditingController _dateController = TextEditingController();
  PositiveService positive = PositiveService();
  DateTime? selectedDate;

  List<BarChartModel> positiveData = [
    BarChartModel('Sun', 5, Colors.amber),
    BarChartModel('Mon', 5, Colors.amber),
    BarChartModel('Tue', 3, Colors.amber),
    BarChartModel('Wed', 4, Colors.amber),
    BarChartModel('Thu', 1, Colors.amber),
    BarChartModel('Fri', 3, Colors.amber),
    BarChartModel('Sat', 8, Colors.amber),
  ];

  @override
  void initState() {
    super.initState();
    fetchPositiveReviews();
  }

  List<Positive> positiveList = [];

  Future<void> fetchPositiveReviews({DateTime? selectedDate}) async {
    if (selectedDate == null) {
      // Handle the case when selectedDate is null
      print('Selected date is null.');
      return;
    }

    DateTime startDate = selectedDate.subtract(Duration(days: 6));
    final response = await http.get(Uri.parse(PositiveService.positiveUrl));

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
        positiveData = positiveReviews;
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
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "Reviews",
        data: positiveData,
        domainFn: (BarChartModel series, _) => series.week,
        measureFn: (BarChartModel series, _) => series.reviews,
        fillColorFn: (BarChartModel series, _) =>
            charts.ColorUtil.fromDartColor(series.colorval),
      )
    ];

    double average = calculateAverage(positiveData);

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 200.0, left: 15.0),
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
                          margin: EdgeInsets.only(right: 50.0, top: 15.0),
                          child: Text(
                            "Positive Reviews",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'RenogareSoft',
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
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
                                prefixIcon: Icon(Icons.calendar_today, color: Colors.black),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                              ),
                              readOnly: true,
                              onTap: () {
                                _selectDate();
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Container(
                          margin: EdgeInsets.only(right: 90.0),
                          child: Text(
                            "This Week",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 110.0, top: 7.0),
                          child: Text(
                            average.toStringAsFixed(3),
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'RenogareSoft',
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 0.0, top: 5.0),
                              child: Icon(Icons.arrow_circle_up, color: Colors.green),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 110.0, top: 6.0),
                              child: Text(
                                "+15%",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontFamily: 'RenogareSoft',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
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
        print('Selected date: $selectedDate');
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