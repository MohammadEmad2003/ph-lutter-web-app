//@dart = 2.9
import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../constants.dart';

class mainGraph extends StatefulWidget {
  const mainGraph({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _mainGraphState createState() => _mainGraphState();
}

class _mainGraphState extends State<mainGraph> {
  List<LiveDataPH> chartDataPH;
  List<LiveDataTEMP> chartDataTEMP;
  ChartSeriesController _chartSeriesControllerPH;
  ChartSeriesController _chartSeriesControllerTEMP;
  final referenceDatase = FirebaseDatabase.instance.ref('test');

  double x;
  double y;

  @override
  void initState() {
    chartDataPH = getChartDataPH();
    chartDataTEMP = getChartDataTEMP();
    Timer.periodic(const Duration(seconds: 1), updateDataSource);
    Timer.periodic(const Duration(seconds: 1), updateDataSourceTEMP);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
            stream: referenceDatase.onValue,
            builder:
                (BuildContext context, AsyncSnapshot<DatabaseEvent> snapshot) {
              if (snapshot.hasData) {
                Map<dynamic, dynamic> map =
                    snapshot.data.snapshot.value as dynamic;
                List<dynamic> l = [];
                l.clear();
                l = map.values.toList();
                if(l[0].toDouble() < 15){
                x = l[0].toDouble();
                y = l[1].toDouble();}
                else {
                x = l[1].toDouble();
                y = l[0].toDouble();
                }              
              } else {
                x = 23;
                y = 7;
              }
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    SfCartesianChart(
                        series: <LineSeries<LiveDataPH, int>>[
                          LineSeries<LiveDataPH, int>(
                            onRendererCreated:
                                (ChartSeriesController controller) {
                              _chartSeriesControllerPH = controller;
                            },
                            dataSource: chartDataPH,
                            color: kGreen,
                            xValueMapper: (LiveDataPH sales, _) => sales.time,
                            yValueMapper: (LiveDataPH sales, _) => sales.speed,
                          )
                        ],
                        primaryXAxis: NumericAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                            edgeLabelPlacement: EdgeLabelPlacement.shift,
                            interval: 3,
                            title: AxisTitle(text: 'Time (seconds)')),
                        primaryYAxis: NumericAxis(
                            axisLine: const AxisLine(width: 0),
                            majorTickLines: const MajorTickLines(size: 0),
                            title: AxisTitle(text: 'The Acidity of Rains (pH)'))),
                    SfCartesianChart(
                        series: <LineSeries<LiveDataTEMP, int>>[
                          LineSeries<LiveDataTEMP, int>(
                            onRendererCreated:
                                (ChartSeriesController controller) {
                              _chartSeriesControllerTEMP = controller;
                            },
                            dataSource: chartDataTEMP,
                            color: kGreen,
                            xValueMapper: (LiveDataTEMP sales, _) => sales.time,
                            yValueMapper: (LiveDataTEMP sales, _) => sales.speed,
                          )
                        ],
                        primaryXAxis: NumericAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                            edgeLabelPlacement: EdgeLabelPlacement.shift,
                            interval: 3,
                            title: AxisTitle(text: 'Time (seconds)')),
                        primaryYAxis: NumericAxis(
                            axisLine: const AxisLine(width: 0),
                            majorTickLines: const MajorTickLines(size: 0),
                            title: AxisTitle(
                                text:
                                    'The Temperature of the weather (Celisus)'))),
                SizedBox(height: 100),
                  ],
                ),
              );
            }));
  }

  int timesy = 19;
  void updateDataSource(Timer timer) {
    chartDataPH.add(LiveDataPH(timesy, y));
    timesy++;
    print(y);
    chartDataPH.removeAt(0);
    _chartSeriesControllerPH.updateDataSource(
        addedDataIndex: chartDataPH.length - 1, removedDataIndex: 0);
  }

  int timesx = 19;
  void updateDataSourceTEMP(Timer timer) {
    chartDataTEMP.add(LiveDataTEMP(timesx, x));
    timesx++;
    print(x);
    chartDataTEMP.removeAt(0);
    _chartSeriesControllerTEMP.updateDataSource(
        addedDataIndex: chartDataTEMP.length - 1, removedDataIndex: 0);
  }

  List<LiveDataTEMP> getChartDataTEMP() {
    return <LiveDataTEMP>[
      LiveDataTEMP(0, 23.1),
      LiveDataTEMP(1, 22.9),
      LiveDataTEMP(2, 22.8),
      LiveDataTEMP(3, 23.0),
      LiveDataTEMP(4, 22.9),
      LiveDataTEMP(5, 23.0),
      LiveDataTEMP(6, 23.0),
      LiveDataTEMP(7, 23.1),
      LiveDataTEMP(8, 22.9),
      LiveDataTEMP(9, 22.8),
      LiveDataTEMP(10, 23.0),
      LiveDataTEMP(11, 22.9),
      LiveDataTEMP(12, 23.0),
      LiveDataTEMP(13, 23.0),
      LiveDataTEMP(14, 23.1),
      LiveDataTEMP(15, 22.9),
      LiveDataTEMP(16, 22.8),
      LiveDataTEMP(17, 23.0),
      LiveDataTEMP(18, 22.9)
    ];
  }

  List<LiveDataPH> getChartDataPH() {
    return <LiveDataPH>[
      LiveDataPH(0, 7.0),
      LiveDataPH(1, 7.1),
      LiveDataPH(2, 7.2),
      LiveDataPH(3, 6.9),
      LiveDataPH(4, 7.1),
      LiveDataPH(5, 7.0),
      LiveDataPH(6, 6.9),
      LiveDataPH(7, 7.0),
      LiveDataPH(8, 7.0),
      LiveDataPH(9, 7.1),
      LiveDataPH(10, 7.2),
      LiveDataPH(11, 6.9),
      LiveDataPH(12, 7.1),
      LiveDataPH(13, 7.0),
      LiveDataPH(14, 6.9),
      LiveDataPH(15, 7.0),
      LiveDataPH(16, 7.1),
      LiveDataPH(17, 7.2),
      LiveDataPH(18, 6.9)
    ];
  }
}

class LiveDataTEMP {
  LiveDataTEMP(this.time, this.speed);
  final int time;
  final double speed;
}

class LiveDataPH {
  LiveDataPH(this.time, this.speed);
  final int time;
  final double speed;
}
