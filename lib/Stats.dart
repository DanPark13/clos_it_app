import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class clothing {
  final String type;
  final int count;
  final charts.Color barColor;

  clothing({
    @required this.type,
    @required this.count,
    @required this.barColor
  });
  }