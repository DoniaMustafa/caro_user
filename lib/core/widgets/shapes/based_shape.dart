
 import 'package:caro_user_app/core/export/export.dart';
import 'package:flutter/cupertino.dart';

class BasedShape extends StatelessWidget {
  const BasedShape({
    super.key,
    this.width,
    this.height,
    this.margin,
    required this.child,
    this.color,
    this.padding,
    this.shape,
    this.border,
    this.boxShadow,
    this.alignment,
    this.borderRadius,
  });
  final double? width;
  final double? height;
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final BoxShape? shape;  final AlignmentGeometry?alignment;
  final List<BoxShadow>? boxShadow;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
          border: border,
          shape:shape!,
          boxShadow: boxShadow),
      height: height,
      width: width,alignment:alignment ,
      margin: margin,
      padding: padding,
      child: child,
    );
  }
}
