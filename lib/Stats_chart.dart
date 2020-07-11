import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'Stats.dart';
import 'package:flutter/foundation.dart';

class ClothingChart extends StatelessWidget {
  final List<Clothing> data;

  ClothingChart({@required this.data});

  @override
Widget build(BuildContext context) {

    List<charts.Series<Clothing, String>> series
    = [
      charts.Series(
        id: 'chart',
        data: data,
        domainFn: (Clothing series, _) =>
        series.type,
        measureFn: (Clothing series, _) =>
        series.count,
        colorFn: (Clothing series, _) =>
        series.barColor)
    ];

    return charts.BarChart(series, animate: true);
  }
}

