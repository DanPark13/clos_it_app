import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

Class ClothingChart extends Statelesswidget {
  final List<clothing> data;

  ClothingChart({@require this.data});

  @override
Widget build(BuildContext context) {

    List<charts.Series<clothing, String>> series
    = [
      charts.Series(
        id: 'chart',
        data: data
        domainFn: (clothing series, _) =>
        series.type,
        measureFn: (clothing series, _) =>
        series.count,
        colorFn: (clothing series, _) =>
        series.barColor)
    ];

    return charts.BarChart(series, animate: true);
  }
}

