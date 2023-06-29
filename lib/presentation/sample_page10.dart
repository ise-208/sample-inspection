import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              child: Padding(
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
            ),
            Container(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SfCartesianChart(
                  legend: Legend(
                    borderWidth: 2,
                    isVisible: true,
                  ),
                  primaryXAxis: CategoryAxis(),
                  primaryYAxis:
                      NumericAxis(minimum: 0, maximum: 100, interval: 10),
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <ChartSeries<_ChartData, String>>[
                    BarSeries(
                      dataSource: [
                        _ChartData('CHN', 12, 3, 66),
                        _ChartData('GER', 15, 53, 19),
                        _ChartData('RUS', 30, 22, 31),
                      ],
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y1,
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                      name: "A",
                    ),
                    BarSeries(
                        dataSource: [
                          _ChartData('CHN', 12, 3, 66),
                          _ChartData('GER', 15, 53, 19),
                          _ChartData('RUS', 30, 22, 31),
                        ],
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y2,
                        dataLabelSettings: DataLabelSettings(isVisible: true),
                        name: "B")
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    child: new CircularPercentIndicator(
                      radius: 100.0,
                      lineWidth: 10.0,
                      percent: 0.8,
                      header: Text("Icon header"),
                      center: Icon(
                        Icons.person_pin,
                        size: 50.0,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                  ),
                  Container(
                    child: new LinearPercentIndicator(
                      width: 100.0,
                      lineHeight: 8.0,
                      percent: 0.2,
                      progressColor: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: DataTable(
                columns: [
                  DataColumn(label: Text("名前")),
                  DataColumn(label: Text("年齢")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("foo")),
                    DataCell(Text("50")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("bar")),
                    DataCell(Text("60")),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ChartData {
  final String x;
  final double? y1;
  final double? y2;
  final double? y3;

  _ChartData(this.x, this.y1, this.y2, this.y3);
}
