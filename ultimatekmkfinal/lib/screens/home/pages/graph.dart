//@dart = 2.9
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../constants.dart';

// ignore: camel_case_types
class graphs extends StatefulWidget {
  const graphs({key});

  @override
  State<graphs> createState() => _graphsState();
}

// ignore: camel_case_types
class _graphsState extends State<graphs> {
  List<LiveData> chartData;
  List<LiveDataTemp> chartDataTemp;

  @override
  void initState() {
    chartData = getChartData();
    chartDataTemp = getChartDataTemp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            SfCartesianChart(
                series: <LineSeries<LiveData, int>>[
                  LineSeries<LiveData, int>(
                    onRendererCreated: (ChartSeriesController controller) {},
                    dataSource: chartData,
                    color: kGreen,
                    xValueMapper: (LiveData sales, _) => sales.time,
                    yValueMapper: (LiveData sales, _) => sales.speed,
                  )
                ],
                primaryXAxis: NumericAxis(
                    majorGridLines: const MajorGridLines(width: 0),
                    edgeLabelPlacement: EdgeLabelPlacement.shift,
                    interval: 3,
                    title: AxisTitle(text: 'No. of Moles ( \u00B5 Mole )')),
                primaryYAxis: NumericAxis(
                    axisLine: const AxisLine(width: 0),
                    majorTickLines: const MajorTickLines(size: 0),
                    title: AxisTitle(text: 'The Acidity (pH)'))),
            SfCartesianChart(
                series: <LineSeries<LiveDataTemp, int>>[
                  LineSeries<LiveDataTemp, int>(
                    onRendererCreated: (ChartSeriesController controller) {},
                    dataSource: chartDataTemp,
                    color: kGreen,
                    xValueMapper: (LiveDataTemp sales, _) => sales.time,
                    yValueMapper: (LiveDataTemp sales, _) => sales.speed,
                  )
                ],
                primaryXAxis: NumericAxis(
                    majorGridLines: const MajorGridLines(width: 0),
                    edgeLabelPlacement: EdgeLabelPlacement.shift,
                    interval: 3,
                    title: AxisTitle(text: 'Temperature (Deci Celicus)')),
                primaryYAxis: NumericAxis(
                    axisLine: const AxisLine(width: 0),
                    majorTickLines: const MajorTickLines(size: 0),
                    title: AxisTitle(text: 'The Acidity (pH)'))),
            const SizedBox(height: 100)
          ],
        ),
      ),
    );
  }

  List<LiveData> getChartData() {
    return <LiveData>[
      LiveData(63, 4.20),
      LiveData(64, 4.17),
      LiveData(69, 4.15),
      LiveData(73, 4.13),
      LiveData(76, 4.11),
      LiveData(80, 4.09),
      LiveData(84, 4.07),
      LiveData(89, 4.05),
      LiveData(93, 4.03),
      LiveData(98, 4.01),
      LiveData(103, 3.98),
      LiveData(108, 3.96),
      LiveData(113, 3.94),
      LiveData(119, 3.90),
      LiveData(125, 3.88),
      LiveData(131, 3.86),
      LiveData(138, 3.84),
      LiveData(145, 3.82),
      LiveData(150, 3.80)
    ];
  }
  List<LiveDataTemp> getChartDataTemp() {
    return <LiveDataTemp>[
      LiveDataTemp(253, 4.12),
      LiveDataTemp(254, 4.12),
      LiveDataTemp(260, 4.11),
      LiveDataTemp(265, 4.10),
      LiveDataTemp(271, 4.09),
      LiveDataTemp(283, 4.06),
      LiveDataTemp(297, 4.03),
      LiveDataTemp(305, 3.99),
      LiveDataTemp(315, 3.96),
      LiveDataTemp(322, 3.93),
      LiveDataTemp(333, 3.88),
      LiveDataTemp(340, 3.85),
      LiveDataTemp(352, 3.83),
    ];
  }
}

class LiveData {
  LiveData(this.time, this.speed);
  final int time;
  final double speed;
}

class LiveDataTemp {
  LiveDataTemp(this.time, this.speed);
  final int time;
  final double speed;
}
