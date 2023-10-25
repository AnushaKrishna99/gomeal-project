import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<charts.Series<Polution, String>> _seriesData = [];

  _generateData(){
    var data1 = [
      new Polution('jan', 100, Colors.red),
      new Polution('Feb', 50 , Colors.red),
      new Polution('Mar', 70, Colors.red),
      new Polution('Apr', 150, Colors.red),
      new Polution('May',250, Colors.red),
      new Polution('Jun', 170, Colors.red),
      new Polution('Jul', 110, Colors.red),
      new Polution('Aug', 110, Colors.red),
      new Polution('Sep', 20, Colors.red),
      new Polution('Oct', 30, Colors.red),
      new Polution('Nov', 80, Colors.red),
      new Polution('Dec', 300, Colors.red),
    ];
    var data2 = [
      new Polution('jan', 100, Colors.amber),
      new Polution('Feb', 50 , Colors.amber),
      new Polution('Mar', 70, Colors.amber),
      new Polution('Apr', 150, Colors.amber),
      new Polution('May',250, Colors.amber),
      new Polution('Jun', 170, Colors.amber),
      new Polution('Jul', 10, Colors.amber),
      new Polution('Aug', 110, Colors.amber),
      new Polution('Sep', 20, Colors.amber),
      new Polution('Oct', 30, Colors.amber),
      new Polution('Nov', 80, Colors.amber),
      new Polution('Dec', 300, Colors.amber),
    ];
    _seriesData.add(
      charts.Series(
        domainFn: (Polution polution,_)=> polution.week,
        measureFn: (Polution polution,_)=> polution.dataval,
        id: '50',
        data: data1,
        fillColorFn: (Polution polution,_)=>
            charts.ColorUtil.fromDartColor(polution.colorval),
        fillPatternFn: (_, __)=> charts.FillPatternType.solid,
      ),
    );
    _seriesData.add(
        charts.Series(
          domainFn: (Polution polution,_)=> polution.week,
          measureFn: (Polution polution,_)=> polution.dataval,
          id: '50',
          data: data2,
          fillColorFn: (Polution polution,_)=>
              charts.ColorUtil.fromDartColor(polution.colorval),
          fillPatternFn: (_, __)=> charts.FillPatternType.solid,
        )
    );
  }
  @override
  void initState(){
    super.initState();
    _seriesData = <charts.Series<Polution, String>>[];
    _generateData();
  }
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(bottom: 260.0,left: 15.0),
                child: Text("Statistics",style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'RenogareSoft',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),)),
            SizedBox(height: 30.0,),
            Expanded(
              flex: 4,
              child: charts.BarChart(
                _seriesData,
                animate: true,
                barGroupingType: charts.BarGroupingType.grouped,
                animationDuration: Duration(seconds: 1),
                barRendererDecorator: new charts.BarLabelDecorator<String>(),
                defaultRenderer: new charts.BarRendererConfig(
                  minBarLengthPx: 4,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 10.0,top: 0.0),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 80.0),
                        child: Icon(Icons.more_horiz_outlined,color: Colors.grey,)),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.circle_outlined,color: Colors.amber,),
                          Text("Positive",style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),),
                          SizedBox(width: 5.0,),
                          Icon(Icons.circle_outlined,color: Colors.red,),
                          Text("Bad",style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      margin: EdgeInsets.only(right: 30.0),
                      child: Text("Positive Feedback",style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      margin: EdgeInsets.only(right: 90.0),
                      child: Text("3.456",style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'RenogareSoft',
                        fontSize: 20,
                      ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 5.0),
                            child: Icon(Icons.arrow_circle_up,color: Colors.amber,)),
                        Text("+15% ",style: TextStyle(
                          color: Colors.amber,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                        ),
                        Text("From Last Month",style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                          fontSize: 10,
                        ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      margin: EdgeInsets.only(right: 50.0),
                      child: Text("Bad Feedback",style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      margin: EdgeInsets.only(right: 90.0),
                      child: Text("1.236",style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'RenogareSoft',
                        fontSize: 20,
                      ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 5.0),
                            child: Icon(Icons.arrow_circle_down,color: Colors.red,)),
                        Text("+15% ",style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                        ),
                        Text("From Last Month",style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                          fontSize: 10,
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

class Polution {
  String week;
  double dataval;
  Color colorval;

  Polution(this.week,this.dataval,this.colorval);
}

