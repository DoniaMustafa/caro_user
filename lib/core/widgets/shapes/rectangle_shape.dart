import 'package:caro_user_app/core/extension.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_mixin.dart';
import 'based_shape.dart';

class RectangleShape extends StatelessWidget with ShapeMixin {
  RectangleShape._();
  RectangleShape.tap({
    super.key,
    this.width,
    // this.alignment,
    this.onTap,
    this.isTap = false,
    required this.child,
    this.padding,
    this.margin,
    this.height,
    this.borderRadius,
    this.isBoarder = false,
    this.color = Colors.white,
    this.isShadow = false,
  });

  RectangleShape.withoutTap({
    super.key,
    this.width,
    this.borderRadius,
    this.isTap = false,
    required this.child,
    this.padding,
    this.margin,
    this.height,
    this.isBoarder = false,
    this.isShadow = false,
    this.color = Colors.white,
  });
  // AlignmentDirectional? alignment;
  bool? isTap;
  bool? isBoarder;
  bool? isShadow;
  GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return isTap.isTrue ? _buildWithTap : _buildWithoutTap;
  }

  get _buildWithTap => GestureDetector(
    onTap: onTap!,
    child: BasedShape(
      alignment: alignment,
      color: color,
      shape: shape.isNotNull ? shape! : null,
      height: height,
      width: width,
      margin: margin,
      // color: color,
      borderRadius: borderRadius,
      padding: padding,
      child: child!,
    ),
  );
  get _buildWithoutTap => BasedShape(
    color: color,
    shape: shape,
    borderRadius: borderRadius,
    height: height,
    width: width,
    margin: margin,
    // color: color,
    padding: padding,
    child: child!,
  );

  @override
  // TODO: implement border
  BoxBorder? get border =>
      isBoarder.isFalse
          ? Border.all(color: AppColors.black)
          : throw UnimplementedError();

  @override
  // TODO: implement borderRadius
  BorderRadiusGeometry? borderRadius = const BorderRadius.all(
    Radius.circular(20),
  );

  @override
  // TODO: implement boxShadow
  List<BoxShadow>? get boxShadow =>
      isShadow.isTrue
          ? [
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.20),
              blurRadius: 16,
              offset: const Offset(0, -4),
            ),
          ]
          : throw UnimplementedError();

  @override
  // TODO: implement child
  Widget? child;

  @override
  // TODO: implement color
  Color? color;

  @override
  // TODO: implement height
  double? height;

  @override
  // TODO: implement margin
  EdgeInsetsGeometry? margin;

  @override
  // TODO: implement padding
  EdgeInsetsGeometry? padding;

  @override
  // TODO: implement shape
  BoxShape? get shape => BoxShape.rectangle;

  @override
  // TODO: implement width
  double? width;

  @override
  // TODO: implement alignment
  AlignmentDirectional get alignment => AlignmentDirectional.topEnd;
}
