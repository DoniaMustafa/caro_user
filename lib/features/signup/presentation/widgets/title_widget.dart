
import 'package:caro_user_app/core/extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextWidget(
          text: "انشاء حساب جديد",
          style: getBoldTextStyle(color: AppColors.primaryColor, fontSize: 18),
        ),
        12.vs,
        CustomTextWidget(
          text: "يرجى تعبئة البيانات التالية لإنشاء حساب جديد",
          style: getRegularTextStyle(color: const Color(0xff858585)),
        ),
      ],
    );
  }
}
