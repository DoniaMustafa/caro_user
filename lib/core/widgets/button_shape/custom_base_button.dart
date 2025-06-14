import 'package:caro_user_app/core/extension.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_mixin.dart';
import '../../utils/app_style.dart';
import '../../utils/size_utils.dart';

class CustomBaseButton extends StatelessWidget {
  const CustomBaseButton({
    super.key,
    this.leftIcon,
    this.rightIcon,
    this.boxShadow,
    required this.onPressed,
    required this.text,
    this.color = AppColors.grey,
    this.padding,
    this.side = BorderSide.none,
    this.radius = 12,
    this.height,
    this.elevation,
    this.width,
    this.textColor = AppColors.white,
    this.style,
    this.borderColor,
    this.isEnd = false,
    this.isBorder = false,
    this.margin,
  });
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? leftIcon;
  final String text;
  final VoidCallback? onPressed;

  final Color? borderColor;
  final bool isEnd;
  final Widget? rightIcon;
  final bool isBorder;
  final double? height;
  final double? width;
  final Color? textColor;
  final double? radius;
  final BorderSide side;
  final Color color;
  final TextStyle? style;
  final double? elevation;
  final List<BoxShadow>? boxShadow;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(radius!),
        // color: color,
        // border: isBorder
        //     ? Border.all(color: AppColors.primaryColor, width: 1)
        //     : null,
        boxShadow: boxShadow,
      ),
      child: _buildButton,
    );
  }

  get _buildButton => ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      elevation: elevation,
      shadowColor: AppColors.transparent,
      side:
          isBorder
              ? BorderSide(color: borderColor ?? AppColors.white, width: 1)
              : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius!),
      ),
      padding: padding ?? getMarginOrPadding(all: 0),
      // shadowColor: AppColors.borderColor.withOpacity(0.5),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius!), side: side),
      // padding: padding ?? getPadding(vertical: 10),
    ),
    onPressed: onPressed,
    child: _buildButtonContent,
  );

  get _buildButtonContent => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      if (leftIcon.isNotNull) leftIcon!,
      if (leftIcon.isNotNull) 10.hs,
      Text(
        text,
        textScaler: const TextScaler.linear(0.9),
        textAlign: TextAlign.center,
        style:
            style ??
            getMediumTextStyle(fontSize: 18, color: textColor, height: 1),
      ),
      if (rightIcon.isNotNull) 8.77.hs,

      if (rightIcon.isNotNull) rightIcon!,
    ],
  );
}
