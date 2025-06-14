import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/model/generic_model.dart';
import 'package:caro_user_app/core/utils/app_list_constant.dart';
import 'package:caro_user_app/core/widgets/custom_image.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/core/widgets/shapes/rectangle_shape.dart';

class CustomListTileVertical extends StatelessWidget {
  const CustomListTileVertical({
    super.key,
    required this.index,
    this.fontTitle,
    this.imageAlign = AlignmentDirectional.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    required this.model,
  });
  final int index;
  final GenericModel model;
  final double? fontTitle;
  final CrossAxisAlignment? crossAxisAlignment;
  final AlignmentGeometry? imageAlign;
  @override
  Widget build(BuildContext context) {
    return RectangleShape.tap(
      padding: getMarginOrPadding(vertical: 7, horizontal: 7),
      margin: getMarginOrPadding(end: index == 3 ? 0 : 5),
      borderRadius: 12.radius,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: crossAxisAlignment!,
        children: [
          if (model.title.isNotNull)
            CustomTextWidget(
              text: model.title!,

              style: getMediumTextStyle(
                color: AppColors.primaryColor,
                fontSize: fontTitle ?? 18,
              ),
            ),
          if (model.image.isNotNull) 2.vs,
          if (model.image.isNotNull)
            Expanded(
              child: Align(
                alignment: imageAlign!,
                child: CustomImage(image: model.image!),
              ),
            ),
          if (model.subtitle.isNotNull) 8.vs,
          if (model.subtitle.isNotNull)
            CustomTextWidget(
              text: model.subtitle!,
              style: getRegularTextStyle(color: AppColors.grey600, fontSize: 8),
            ),
        ],
      ),
    );
  }
}
