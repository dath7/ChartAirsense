import 'package:charts_flutter/flutter.dart' as charts;

class AQIChart {
  int value;
  String time;
  final charts.Color color;

  AQIChart({required this.value, required this.time, required this.color});
}
