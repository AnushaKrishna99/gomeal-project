import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
class LineChart extends StatefulWidget {
  const LineChart({super.key});

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  List<charts.Series<Sales, int>> _seriesData = [];

  _generateData() {
    var linedata1 = [
      new Sales(0, 10, Colors.amber),
      new Sales(1, 20, Colors.amber),
      new Sales(2, 30, Colors.amber),
      new Sales(3, 40, Colors.amber),
      new Sales(4, 50, Colors.amber),
      new Sales(5, 40, Colors.amber),
      new Sales(6, 20, Colors.amber),
    ];
    var linedata2 = [
      new Sales(0, 15, Colors.red),
      new Sales(1, 25, Colors.red),
      new Sales(2, 30, Colors.red),
      new Sales(3, 40, Colors.red),
      new Sales(4, 60, Colors.red),
      new Sales(5, 35, Colors.red),
      new Sales(6, 20, Colors.red),
    ];
    _seriesData.add(
      charts.Series(
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.salesval,
        id: '50',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(Colors.amber),
        data: linedata1,
      ),
    );
    _seriesData.add(
      charts.Series(
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.salesval,
        id: '50',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(Colors.red),
        data: linedata2,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _seriesData = <charts.Series<Sales, int>>[];
    _generateData();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Performance Statistic",style: TextStyle(
                color: Colors.black,
                fontFamily: 'RenogareSoft',
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),),
              Row(
                children: [
                  Icon(Icons.circle,color: Colors.amber,size: 15,),
                  Text("This Week",style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'RenogareSoft',
                    fontSize: 10,
                  ),)
                ],
              ),
              Row(
                children: [
                  Icon(Icons.circle,color: Colors.red,size: 15,),
                  Text("Last Week",style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'RenogareSoft',
                    fontSize: 10,
                  ),)
                ],
              ),
              Expanded(
                child: charts.LineChart(
                  _seriesData.cast<charts.Series<dynamic, num>>(),
                  defaultRenderer: new charts.LineRendererConfig(
                    includeArea: true, stacked: true,
                  ),
                  animate: true,
                  animationDuration: Duration(seconds: 5),
                  behaviors: [
                    new charts.ChartTitle('Week',
                      behaviorPosition: charts.BehaviorPosition.bottom,
                      titleOutsideJustification: charts.OutsideJustification
                          .middleDrawArea,
                    ),
                    new charts.ChartTitle('Performance',
                      behaviorPosition: charts.BehaviorPosition.start,
                      titleOutsideJustification: charts.OutsideJustification
                          .middleDrawArea,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  class Sales{
  int year;
  int salesval;
  Color colorval;

  Sales(this.year,this.salesval,this.colorval);
}
