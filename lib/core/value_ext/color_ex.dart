import 'package:flutter/material.dart';

extension ColorEx on Color {
  Container toContainer({
    double? width,
    double? height,
  }) =>
      Container(height: height, width: width, color: this);

  Divider toDivider({Key? key, double height = 1}) =>
      Divider(color: this, height: height, key: key);

  Color withAlpha(int alpha) {
    if (alpha > 255) alpha = 255;
    if (alpha < 0) alpha = 0;
    return withOpacity(alpha / 255.0);
  }
}
