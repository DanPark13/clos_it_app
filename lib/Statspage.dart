import 'package:flutter/material.dart';
import 'Stats.dart';
import 'Stats_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StatsPage extends StatelessWidget {
  final List<Clothing> data = [
    Clothing(
      type: 'shorts',
      count: 3,
      barColor: charts.ColorUtil.fromDartColor
      (Colors.blue),
    ),
    Clothing(
      type: 'long',
      count: 3,
      barColor: charts.ColorUtil.fromDartColor
      (Colors.blue),
  ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClothingChart(
          data: data,
      )),
    );
  }
}