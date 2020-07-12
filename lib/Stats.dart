import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class Clothing {
  final String type;
  final int count;
  final charts.Color barColor;

  Clothing({
    @required this.type,
    @required this.count,
    @required this.barColor
  });
  }