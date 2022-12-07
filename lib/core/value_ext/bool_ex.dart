import 'package:flutter/material.dart';

extension BoolEx on bool {
  Widget toWidget({
    required Widget Function() builder,
    Widget? falseWidget,
    Widget Function()? falseBuilder,
  }) =>
      this
          ? builder.call()
          : (falseBuilder?.call() ?? falseWidget ?? const SizedBox.shrink());
}
