import 'package:flutter/material.dart';

import '../../../../../core/export/export.dart';
import '../../../../../core/widgets/shapes/rectangle_shape.dart';

class PaymentContainer extends StatelessWidget {
  const PaymentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      borderRadius: BorderRadius.circular(12),
      padding: getMarginOrPadding(start: 14, end: 16, top: 14, bottom: 15),
      margin: getMarginOrPadding(bottom: 14),
      child: Row(
        children: [
          CustomElevatedButton.text(
            onPressed: () {},
            text: "دفع عربون",
            backgroundColor: AppColors.blue,
          ),
          Spacer(),
          CustomTextWidget(
            text: "قيمة العربون 500 ريال ",
            style: getMediumTextStyle(),
          ),
        ],
      ),
    );
  }
}
