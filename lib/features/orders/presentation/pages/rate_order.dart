import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';
import '../../../../core/utils/assats_file.dart';
import '../../../../core/widgets/custom_icon.dart';
import '../../../../core/widgets/custom_network_image.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class RateOrder extends StatelessWidget {
  const RateOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.child(
      title: "تقييم الطلب",
      isBack: true,
      padding: getMarginOrPadding(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextWidget(
                    text: "سامي عبدالله",
                    style: getSemiboldTextStyle(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextWidget(
                        text: "3.0",
                        style: getRegularTextStyle(color: AppColors.grey),
                      ),
                      10.hs,
                      RatingBar.builder(
                        itemSize: iconSize(20, 20),
                        allowHalfRating: true,
                        itemCount: 5,
                        tapOnlyMode: true,
                        itemBuilder:
                            (context, index) => const CustomIcon(
                              icon: Icons.star_rounded,
                              color: AppColors.yellow,
                            ),
                        onRatingUpdate: (v) {},
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

          32.vs,
          Align(
            alignment: Alignment.centerRight,
            child: CustomTextWidget(
              text: "رأيك بقدم الطلب",
              style: getMediumTextStyle(fontSize: 16),
            ),
          ),
          12.vs,
          CustomTextFormField(
            isFill: true,
            height: 100,
            maxLines: 5,
            textDirection: TextDirection.rtl,
            hintText: "اكتب رأيك بالطلب و بمقدم الطلب هنا . . .",
            hintTextDirection: TextDirection.rtl,
            hintStyle: getRegularTextStyle(color: AppColors.grey, height: 3.h),
          ),
          Spacer(),
          CustomElevatedButton.text(onPressed: () {}, text: "ارسال التقييم"),
        ],
      ),
    );
  }
}
