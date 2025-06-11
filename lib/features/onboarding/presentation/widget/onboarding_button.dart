
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  });
  final String text;
  final Color textColor;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 335,
      height: 46,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.primaryColor, width: 1),
      ),
      color: backgroundColor,
      onPressed: () {},
      child: CustomTextWidget(
        text: text,
        style: getMediumTextStyle(color: textColor),
      ),
    );
  }
}
