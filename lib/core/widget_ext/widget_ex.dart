import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../value_ext/bool_ex.dart';

extension WidgetEx on Widget {
  Widget applyCenter({
    Key? key,
    double? widthFactor,
    double? heightFactor,
  }) =>
      Center(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  Widget applyAlign({
    Key? key,
    AlignmentGeometry alignment = Alignment.center,
    double? widthFactor,
    double? heightFactor,
  }) =>
      Align(
        key: key,
        alignment: alignment,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  Widget applyPositioned({
    Key? key,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
  }) =>
      Positioned(
        key: key,
        left: left,
        top: top,
        right: right,
        bottom: bottom,
        width: width,
        height: height,
        child: this,
      );

  Widget applyPositionedFill({
    Key? key,
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) =>
      Positioned.fill(
        key: key,
        left: left,
        top: top,
        right: right,
        bottom: bottom,
        child: this,
      );

  Widget applyRow({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) =>
      Row(
        key: key,
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: [this],
      );

  Widget applyColumn({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) =>
      Column(
        key: key,
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: [this],
      );

  Widget applySafe({
    Key? key,
    bool left = true,
    bool top = true,
    bool right = true,
    bool bottom = true,
    EdgeInsets minimum = EdgeInsets.zero,
    bool maintainBottomViewPadding = false,
  }) =>
      SafeArea(
        key: key,
        left: left,
        right: right,
        top: top,
        bottom: bottom,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
        child: this,
      );

  Widget applyScrollView({
    Key? key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    EdgeInsetsGeometry? padding,
    bool? primary,
    ScrollPhysics? physics,
    ScrollController? controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    Clip clipBehavior = Clip.hardEdge,
    String? restorationId,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior =
        ScrollViewKeyboardDismissBehavior.manual,
  }) =>
      SingleChildScrollView(
        key: key,
        scrollDirection: scrollDirection,
        reverse: reverse,
        padding: padding,
        primary: primary,
        physics: physics,
        controller: controller,
        dragStartBehavior: dragStartBehavior,
        clipBehavior: clipBehavior,
        restorationId: restorationId,
        keyboardDismissBehavior: keyboardDismissBehavior,
        child: this,
      );

  Widget applyUnconstrainedBox({
    Key? key,
    TextDirection? textDirection,
    Alignment alignment = Alignment.center,
    Axis? constrainedAxis,
    Clip clipBehavior = Clip.none,
  }) =>
      UnconstrainedBox(
        key: key,
        textDirection: textDirection,
        alignment: alignment,
        constrainedAxis: constrainedAxis,
        clipBehavior: clipBehavior,
        child: this,
      );

  Widget applyPadding(EdgeInsets padding, {Key? key}) => Padding(
        key: key,
        padding: padding,
        child: this,
      );

  Widget applySizeBox({
    Key? key,
    double? width,
    double? height,
  }) =>
      SizedBox(
        width: width,
        height: height,
        child: this,
      );

  Widget applyContainer({
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
        decoration: decoration,
        foregroundDecoration: foregroundDecoration,
        transform: transform,
        transformAlignment: transformAlignment,
        child: this,
      );

  Widget applyRadius({
    Key? key,
    BorderRadius borderRadius = BorderRadius.zero,
    CustomClipper<RRect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) =>
      ClipRRect(
        key: key,
        borderRadius: borderRadius,
        clipper: clipper,
        clipBehavior: clipBehavior,
        child: this,
      );

  Widget applyColor({
    Key? key,
    required Color color,
  }) =>
      ColoredBox(
        key: key,
        color: color,
        child: this,
      );

  Widget applyRadiusAll(
    double radius, {
    Key? key,
    CustomClipper<RRect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) =>
      ClipRRect(
        key: key,
        borderRadius: BorderRadius.circular(radius),
        clipper: clipper,
        clipBehavior: clipBehavior,
        child: this,
      );

  Widget applyOpacity({
    Key? key,
    required double opacity,
    bool alwaysIncludeSemantics = false,
  }) =>
      Opacity(
        key: key,
        opacity: opacity,
        alwaysIncludeSemantics: alwaysIncludeSemantics,
        child: this,
      );

  Widget get expanded => Expanded(child: this);

  Widget applyExpanded({
    Key? key,
    int flex = 1,
  }) =>
      Expanded(
        key: key,
        flex: flex,
        child: this,
      );

  Widget get flexible => Flexible(child: this);

  Widget applyFlexible({
    Key? key,
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) =>
      Flexible(
        key: key,
        flex: flex,
        fit: fit,
        child: this,
      );

  Widget willPopScope({
    Key? key,
    required WillPopCallback onWillPop,
  }) =>
      WillPopScope(key: key, onWillPop: onWillPop, child: this);

  Widget applyOffstage({
    Key? key,
    bool offstage = true,
  }) =>
      Offstage(
        key: key,
        offstage: offstage,
        child: this,
      );

  // display widget where value == true
  // if value == false ,return SizeBox.shrink().
  Widget where(bool value) => whereOrElse(value);

  // display widget where value is true
  // if value is false, first use orElseWidget, and then use orElseWidgetBuilder when orElseWidget is null,and then use SizeBox.shrink() when orElseWidget and orElseWidgetBuilder are both null.
  Widget whereOrElse(
    bool value, {
    Widget? orElseWidget,
    Widget Function()? orElseWidgetBuilder,
  }) =>
      value.toWidget(
        builder: () => this,
        falseWidget: orElseWidget,
        falseBuilder: orElseWidgetBuilder,
      );
}
