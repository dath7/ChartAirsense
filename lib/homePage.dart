import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:impoor/bar_chart.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  // create data
  final List<AQIChart> data = [
    AQIChart(
      value: 100,
      time: '8',
      color: charts.ColorUtil.fromDartColor(Colors.orange),
    ),
    AQIChart(
      value: 120,
      time: '9',
      color: charts.ColorUtil.fromDartColor(Colors.orange),
    ),
    AQIChart(
      value: 150,
      time: '10',
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    AQIChart(
      value: 170,
      time: '11',
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    AQIChart(
      value: 200,
      time: '12',
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    AQIChart(
      value: 190,
      time: '13',
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    AQIChart(
      value: 180,
      time: '14',
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    AQIChart(
      value: 170,
      time: '15',
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    AQIChart(
      value: 200,
      time: '16',
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    AQIChart(
      value: 230,
      time: '17',
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    AQIChart(
      value: 250,
      time: '18',
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    AQIChart(
      value: 180,
      time: '19',
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    AQIChart(
      value: 140,
      time: '20',
      color: charts.ColorUtil.fromDartColor(Colors.orange),
    ),
    AQIChart(
      value: 90,
      time: '21',
      color: charts.ColorUtil.fromDartColor(Colors.lime),
    ),
    AQIChart(
      value: 80,
      time: '22',
      color: charts.ColorUtil.fromDartColor(Colors.lime),
    ),
    AQIChart(
      value: 50,
      time: '23',
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // create series
    List<charts.Series<AQIChart, String>> series = [
      charts.Series(
        id: "AQI",
        data: data,
        domainFn: (AQIChart series, _) => series.time,
        measureFn: (AQIChart series, _) => series.value,
        colorFn: (AQIChart series, _) => series.color,
      )
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Bieu do AQI'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: charts.BarChart(series, animate: true),
      ),
    );
  }
}
