import 'package:flutter/material.dart';

extension NumEx on num {
  SizedBox get inRow => SizedBox(width: toDouble());

  SizedBox get inColumn => SizedBox(height: toDouble());

  Widget toHLine({double? width, Color? color}) => Container(
        width: width,
        height: toDouble(),
        color: color,
      );

  Widget toVLine({double? height, Color? color}) => Container(
        height: height,
        width: toDouble(),
        color: color,
      );
}
