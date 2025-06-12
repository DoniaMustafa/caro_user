import 'package:caro_user_app/core/utils/app_colors.dart';
import 'package:caro_user_app/core/utils/app_mixin.dart';
import 'package:caro_user_app/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../utils/app_style.dart';
import 'custom_base_button.dart';

class CustomElevatedButton extends StatelessWidget with BaseButton {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBaseButton(
      margin: getMarginOrPadding(horizontal: 20),
      onPressed: onPressed,
      text: text,
      color: AppColors.primaryColor,
      style: getMediumTextStyle(color: AppColors.white, fontSize: 13),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.051),
          offset: const Offset(0, 1),
          blurRadius: 3,
          spreadRadius: 0,
        ),
      ],
    );
  }

  @override
  // TODO: implement onPressed
  final void Function()? onPressed;

  @override
  // TODO: implement text
  final String text;
}
