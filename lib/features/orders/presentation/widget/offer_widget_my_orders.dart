import 'package:caro_user_app/core/export/export.dart';

import '../../../../core/widgets/custom_network_image.dart';
import '../../../../core/widgets/shapes/rectangle_shape.dart';

class OfferWidgetMyOrders extends StatelessWidget {
  const OfferWidgetMyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      borderRadius: BorderRadius.circular(12),
      padding: getMarginOrPadding(horizontal: 16, top: 12, bottom: 14),

      // margin: getMarginOrPadding(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RichText(
                text: TextSpan(
                  text: 'نوع الدفع ',
                  style: getMediumTextStyle(color: AppColors.grey),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' : كاش',
                      style: getRegularTextStyle(color: AppColors.grey),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextWidget(
                    text: "سامي عبدالله",
                    style: getSemiboldTextStyle(),
                  ),
                  Row(
                    children: [
                      CustomTextWidget(
                        text: "4.7",
                        style: getMediumTextStyle(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const CustomIcon(
                        icon: Icons.star,
                        color: AppColors.yellow,
                      ),
                    ],
                  ),
                ],
              ),
              8.hs,
              CustomNetworkImage.circular(
                radius: 40,
                imageUrl: AppAssets().logo,
                defaultAsset: AppAssets().logo,
              ),
            ],
          ),
          15.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CustomIcon(
                    icon: Icons.flag_outlined,
                    color: Colors.green,
                    size: iconSize(20, 20),
                  ),
                  CustomTextWidget(
                    text: "مقدم الخدمه",
                    style: getMediumTextStyle(),
                  ),
                ],
              ),
              10.hs,
              Column(
                children: [
                  CustomTextWidget(
                    text: "50 كم",
                    style: getMediumTextStyle(color: AppColors.primaryColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      getHorizontalSize(20).toInt(),
                      (i) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Container(
                          width: 6,
                          height: 3,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              10.hs,

              Column(
                children: [
                  CustomIcon(
                    icon: Icons.gps_fixed_outlined,
                    color: Colors.blue,
                    size: iconSize(20, 20),
                  ),
                  CustomTextWidget(text: "انا", style: getMediumTextStyle()),
                ],
              ),
            ],
          ),
          14.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextWidget(
                text: "تعبئة كفر",
                style: getMediumTextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 12,
                ),
              ),
              6.hs,
              CustomSvg.assets(asset: AppAssets().puzzle),
              58.hs,
              CustomTextWidget(
                text: "منذ ساعة",
                style: getMediumTextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 12,
                ),
              ),
              6.hs,
              CustomIcon(
                icon: Icons.timer_outlined,
                color: AppColors.primaryColor,
                size: iconSize(14, 14),
              ),
              58.hs,

              CustomSvg.assets(
                asset: AppAssets().riyalSaudi,
                color: AppColors.primaryColor,
              ),
              5.hs,
              CustomTextWidget(
                text: "1500",
                style: getMediumTextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 12,
                ),
              ),
              6.hs,
              CustomSvg.assets(asset: AppAssets().moneyIcon),
            ],
          ),
          14.vs,
          CustomElevatedButton.text(onPressed: () {}, text: "قبول العرض"),
        ],
      ),
    );
  }
}
