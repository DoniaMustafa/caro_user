

import 'package:caro_user_app/core/extension.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
   
    required this.backgroundColor, required this.function, required this.child,
  });

  final Color backgroundColor;
  final Function() function;
  final Widget child ;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 335.w,
      height: 46.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: const BorderSide(color: AppColors.primaryColor, width: 1),
      ),
      color: backgroundColor,
      onPressed:function,
      child: child
    );
  }
}
