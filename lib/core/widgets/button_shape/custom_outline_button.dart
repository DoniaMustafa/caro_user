import 'package:caro_user_app/core/utils/app_colors.dart';
import 'package:caro_user_app/core/utils/app_mixin.dart';
import 'package:flutter/material.dart';

import '../../utils/size_utils.dart';
import 'custom_base_button.dart';

class CustomOutlineButton extends StatelessWidget with BaseButton {
  const CustomOutlineButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBaseButton(
      onPressed: onPressed,
      text: text,
      borderColor: AppColors.primaryColor,
      color: AppColors.white,
      isBorder: true,
      margin: getMarginOrPadding(horizontal: 20),
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
