import 'package:flutter/material.dart';
import 'Stats_chart.dart';

class StatsPage extends StatelessWidget {
  final List<clothing> data[

  ]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClothingChart(
          data: data,
        )
      )
    )
  }
}