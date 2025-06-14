import 'package:caro_user_app/core/export/export.dart';

import '../../../../../core/widgets/shapes/rectangle_shape.dart';

class LocationDetailsOfOrderDetails2 extends StatelessWidget {
  const LocationDetailsOfOrderDetails2({super.key});

  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      color: AppColors.white,
      padding: getMarginOrPadding(vertical: 18, start: 12, end: 16),
      borderRadius: BorderRadius.circular(12),
      child: Row(
        children: [
          const Expanded(
            child: CustomTextWidget(
              textAlign: TextAlign.right,
              text:
                  " شارع هلال المطيري 9 الجهراء - السالميه - قطعة 504 - شقة 4 - طابق 5 مبنى 3- جاده  ",
            ),
          ),
          8.hs,
          CustomIcon(
            icon: Icons.location_on_rounded,
            size: iconSize(32, 32),
            color: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
