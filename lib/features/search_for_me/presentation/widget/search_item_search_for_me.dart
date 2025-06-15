import 'package:caro_user_app/core/export/export.dart';

import '../../../../core/widgets/custom_network_image.dart';
import '../../../../core/widgets/shapes/rectangle_shape.dart';

class SearchItemInSearchForMe extends StatelessWidget {
  const SearchItemInSearchForMe({
    super.key,
    required this.title,
    this.status,
    required this.location,
    required this.time,
    required this.price,
    required this.image,
    required this.messages,
  });
  final String title;
  final String? status;
  final String location;
  final String time;
  final String price;
  final String image;
  final String messages;

  @override
  Widget build(BuildContext context) {
    return RectangleShape.tap(
      padding: getMarginOrPadding(start: 8, end: 16, top: 12, bottom: 14),
      color: AppColors.white,
      margin: getMarginOrPadding(bottom: 12),
      borderRadius: BorderRadius.circular(12),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              CustomNetworkImage.rectangle(
                width: 111,
                height: 103,
                imageUrl: image,
                defaultAsset: image,
              ),
              CustomIcon(
                icon: Icons.play_circle_outline_outlined,
                color: AppColors.white,
                size: iconSize(16, 16),
              ).withPadding(top: 9, start: 9),
            ],
          ),
          14.hs,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomTextWidget(
                  text: title,
                  style: getSemiboldTextStyle(fontSize: 16),
                ),
                13.vs,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    29.hs,
                    CustomTextWidget(
                      text: messages,
                      style: getMediumTextStyle(
                        color: AppColors.grey,
                        fontSize: 12,
                      ),
                    ),
                    6.hs,
                    CustomIcon(icon: Icons.message),

                    Spacer(),
                    CustomTextWidget(
                      text: status ?? "",
                      style: getMediumTextStyle(fontSize: 12),
                    ),
                    6.hs,
                    if (status.isNotNull)
                      CustomIcon(
                        icon: Icons.verified,
                        color:
                            status == "موثق"
                                ? AppColors.green
                                : AppColors.yellow,
                        size: iconSize(14, 14),
                      ),
                  ],
                ),
                17.vs,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomSvg.assets(
                      asset: AppAssets().riyalSaudi,
                      color: AppColors.primaryColor,
                    ),
                    4.hs,
                    CustomTextWidget(
                      text: price,
                      style: getMediumTextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 12,
                      ),
                    ),
                    6.hs,
                    CustomSvg.assets(
                      asset: AppAssets().moneyIcon,
                      color: AppColors.primaryColor,
                    ),
                    12.hs,
                    CustomTextWidget(
                      text: time,
                      style: getMediumTextStyle(
                        color: AppColors.grey,
                        fontSize: 12,
                      ),
                    ),
                    6.hs,
                    CustomIcon(
                      icon: Icons.access_time_filled_sharp,
                      size: iconSize(11, 11),
                    ),
                    12.hs,
                    CustomTextWidget(
                      text: location,
                      style: getMediumTextStyle(
                        color: AppColors.grey,
                        fontSize: 12,
                      ),
                    ),
                    6.hs,
                    CustomIcon(
                      icon: Icons.location_on,
                      color: AppColors.grey,
                      size: iconSize(9, 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
