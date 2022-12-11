import 'package:flutter/material.dart';

extension NumEx on num {
  SizedBox get inRow => SizedBox(width: toDouble());

  SizedBox get inColumn => SizedBox(height: toDouble());

  Widget toHLine({double? height, Color? color}) => Container(
        width: toDouble(),
        height: height,
        color: color,
      );

  Widget toVLine({double? width, Color? color}) => Container(
        height: toDouble(),
        width: width,
        color: color,
      );
}
