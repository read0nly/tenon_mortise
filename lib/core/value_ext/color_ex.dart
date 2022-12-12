import 'package:flutter/material.dart';

extension ColorEx on Color {
  Container toContainer({
    Key? key,
    AlignmentGeometry? alignment,
    EdgeInsets? padding,
    Color? color,
    BoxDecoration? decoration,
    Decoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsets? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Clip clipBehavior = Clip.none,
  }) =>
      Container(
        key: key,
        height: height,
        width: width,
        padding: padding,
        margin: margin,
        clipBehavior: clipBehavior,
        constraints: constraints,
        color: decoration == null ? color : null,
        alignment: alignment,
        decoration: decoration?.copyWith(color: this),
        foregroundDecoration: foregroundDecoration,
        transform: transform,
        transformAlignment: transformAlignment,
      );

  Divider toDivider({Key? key, double height = 1}) =>
      Divider(color: this, height: height, key: key);

  Color withAlpha(int alpha) {
    if (alpha > 255) alpha = 255;
    if (alpha < 0) alpha = 0;
    return withOpacity(alpha / 255.0);
  }
}
