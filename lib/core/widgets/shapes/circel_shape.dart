import 'package:caro_user_app/core/utils/app_mixin.dart';
import 'package:flutter/material.dart';

import 'based_shape.dart';

class CircleShape extends StatelessWidget with ShapeMixin {
  CircleShape({
    super.key,
    this.color,
    this.onTap,
    this.height,
    this.margin,
    this.padding,
    this.width,
    required this.child,
    // double? width,
    // required super.child,
    // double? height,
    // Color super.color = Colors.black,
  });
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BasedShape(
        height: height,
        width: width,
        shape: BoxShape.circle,
        color: color,
        padding: padding,
        margin: margin,
        child: child,
      ),
    );
  }

  @override
  // TODO: implement border
  BoxBorder? get border => throw UnimplementedError();

  @override
  // TODO: implement borderRadius
  BorderRadiusGeometry? get borderRadius => throw UnimplementedError();

  @override
  // TODO: implement boxShadow
  List<BoxShadow>? get boxShadow => throw UnimplementedError();

  @override
  // TODO: implement child
  final Widget child;

  @override
  // TODO: implement color
  final Color? color;

  @override
  // TODO: implement height
  final double? height;

  @override
  // TODO: implement margin
  final EdgeInsetsGeometry? margin;

  @override
  // TODO: implement padding
  final EdgeInsetsGeometry? padding;

  @override
  // TODO: implement shape
  BoxShape? get shape => BoxShape.rectangle;

  @override
  // TODO: implement width
  final double? width;

  @override
  // TODO: implement alignment
  AlignmentGeometry? get alignment => throw UnimplementedError();
}
