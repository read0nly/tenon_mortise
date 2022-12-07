import 'package:flutter/material.dart';

extension NumEx on num {
  SizedBox get inRow => SizedBox(width: toDouble());

  SizedBox get inColumn => SizedBox(height: toDouble());
}
