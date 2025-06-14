
import 'package:caro_user_app/core/export/export.dart';

import '../../../../../core/widgets/shapes/rectangle_shape.dart';

class DetailsOfOrderDetails2 extends StatelessWidget {
  const DetailsOfOrderDetails2({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12),
      padding: getMarginOrPadding(top: 15, start: 22, end: 21, bottom: 15),
      child: Column(
        children: [
          CustomTextWidget(text: title, style: getMediumTextStyle()),
          CustomTextWidget(text: value, style: getMediumTextStyle()),
        ],
      ),
    );
  }
}


