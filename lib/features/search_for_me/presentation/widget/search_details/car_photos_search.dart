
import '../../../../../core/export/export.dart';
import '../../../../../core/widgets/custom_network_image.dart';
import '../../../../../core/widgets/shapes/rectangle_shape.dart';

class CarPhotosSearchForMe extends StatelessWidget {
  const CarPhotosSearchForMe({super.key});

  @override
  Widget build(BuildContext context) {
    return  RectangleShape.withoutTap(
          padding: getMarginOrPadding(vertical: 14, horizontal: 16),
          margin: getMarginOrPadding(bottom: 16),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomTextWidget(text: "الصور", style: getMediumTextStyle()),
              6.vs,
              CustomNetworkImage.rectangle(
                imageUrl: AppAssets().carForSeachForMe,
                defaultAsset: AppAssets().carForSeachForMe,
                height: 150.h,
              ),
              12.vs,
              CustomNetworkImage.rectangle(
                imageUrl: AppAssets().carForSeachForMe,
                defaultAsset: AppAssets().carForSeachForMe,
                height: 150.h,
              ),
              11.vs,
              CustomOutlineButton(
                onPressed: () {},
                text: "المزيد من الصور",
                textColor: AppColors.grey800,
              ),
            ],
          ),
        )
   ;
  }
}