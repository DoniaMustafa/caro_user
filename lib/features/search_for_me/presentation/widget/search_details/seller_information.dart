import 'package:caro_user_app/core/export/export.dart';

import '../../../../../core/widgets/custom_network_image.dart';
import '../../../../../core/widgets/shapes/rectangle_shape.dart';

class SellerInformation extends StatelessWidget {
  const SellerInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      color: AppColors.white,
      margin: getMarginOrPadding(vertical: 11),
      padding: getMarginOrPadding(top: 12, end: 14, start: 14, bottom: 12),
      borderRadius: BorderRadius.circular(12),
      child: Column(
        children: [
          Row(
            children: [
              CustomIcon(
                icon: Icons.share_rounded,
                size: iconSize(15, 16),
                color: AppColors.grey,
              ),
              24.hs,
              CustomIcon(
                icon: Icons.favorite_rounded,
                size: iconSize(15, 16),
                color: AppColors.grey,
              ),
              Spacer(),
              CustomTextWidget(
                text: "هيونداي اكسنت للبيع",
                style: getSemiboldTextStyle(fontSize: 16),
              ),
            ],
          ),
          16.vs,
          Row(
            children: [
              CustomElevatedButton.text(
                onPressed: () {},
                text: "متابعة",
                backgroundColor: AppColors.red300,
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextWidget(
                    text: "عبد العزيز عبدالله",
                    style: getSemiboldTextStyle(
                      fontSize: 12,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  4.vs,
                  CustomTextWidget(
                    text: "بائع",
                    style: getRegularTextStyle(
                      fontSize: 12,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
              10.hs,
              CustomNetworkImage.circular(
                radius: 35,
                imageUrl: AppAssets().logo,
                defaultAsset: AppAssets().logo,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
