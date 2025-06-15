import 'package:flutter/material.dart';

import '../../../../../core/export/export.dart';
import '../../../../../core/widgets/shapes/rectangle_shape.dart';

class CarDescriptionSearchForMe extends StatelessWidget {
  const CarDescriptionSearchForMe({super.key});

  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      borderRadius: BorderRadius.circular(12),
      margin: getMarginOrPadding(bottom: 14),
      color: AppColors.white,
      padding: getMarginOrPadding(end: 16, top: 14, bottom: 15, start: 7),
      child: CustomTextWidget(
        style: getMediumTextStyle(),
        textAlign: TextAlign.end,
        text:
            "كورولا تويوتا\nمستعملة \nللبيع \nقير أوتوماتيك \nبنزين \nممشى : 68 كم \nوكاله استخدام شخص واحد من الوكالة ماشي 68000 فقط \nشرط بدي ومحركات \nقير عادي قزاز عادي \nتم أضافة شاشه وكمره خلفية \nممش حقيقي ومثبت في موجز \nاستماره جديده \nفحص دوري جديده \nالموقع الدوادمي",
      ),
    );
  }
}
