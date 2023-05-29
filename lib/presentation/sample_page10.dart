import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SamplePage10 extends StatefulWidget {
  const SamplePage10({Key? key}) : super(key: key);

  @override
  State<SamplePage10> createState() => _SamplePage10State();
}

class _SamplePage10State extends State<SamplePage10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CLsample"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: BarChart(BarChartData(
            borderData: FlBorderData(
                border: Border(
              top: BorderSide.none,
              right: BorderSide.none,
              left: BorderSide(width: 1),
              bottom: BorderSide(width: 1),
            )),
            groupsSpace: 10,
            barGroups: [
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(toY: 10, width: 15),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(toY: 1, width: 15),
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(toY: 12, width: 15),
              ]),
              BarChartGroupData(x: 4, barRods: [
                BarChartRodData(toY: 5, width: 15),
              ]),
            ])),
      ),
    );
  }
}
