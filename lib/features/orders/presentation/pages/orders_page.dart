import 'package:caro_user_app/core/app_constant.dart';
import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/utils/assats_file.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/core/widgets/custom_text_widget.dart';
import 'package:caro_user_app/core/widgets/shapes/rectangle_shape.dart';
import 'package:flutter/material.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.children(
      title: "طلباتي",

      children: [
        Column(
          children: [
            CustomHeader(),
            RectangleShape.withoutTap(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          CustomTextWidget(
                            text: "تأجير سيارة كيا سيراتو ",
                            style: getSemiboldTextStyle(fontSize: 16),
                          ),
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: getMediumTextStyle(
                                    color: AppColors.primaryColor,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'عدد ايام الايجار : 4 ايام',
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                              CustomIcon(icon: Icons.calendar_month),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: CustomNetworkImage.rectangle(
                          imageUrl: AppAssets().ordersCar,
                          defaultAsset: AppAssets().ordersCar,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomHeader extends StatefulWidget {
  const CustomHeader({super.key});

  @override
  State<CustomHeader> createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RectangleShape.tap(
          isTap: true,
          onTap: () {
            setState(() {
              index = 0;
            });
          },
          borderRadius: BorderRadius.circular(12),
          color: index == 0 ? AppColors.red300 : AppColors.white,
          padding: getMarginOrPadding(vertical: 8, horizontal: 35),
          child: CustomTextWidget(
            text: "المنتهية",
            style: getMediumTextStyle(
              color: index == 0 ? AppColors.white : AppColors.red300,
              fontSize: 16,
            ),
          ),
        ),
        RectangleShape.tap(
          isTap: true,
          onTap: () {
            setState(() {
              index = 1;
            });
          },
          borderRadius: BorderRadius.circular(12),
          color: index == 1 ? AppColors.red300 : AppColors.white,
          padding: getMarginOrPadding(vertical: 8, horizontal: 35),
          child: CustomTextWidget(
            text: "النشطة",
            style: getMediumTextStyle(
              color: index == 1 ? AppColors.white : AppColors.red300,
              fontSize: 16,
            ),
          ),
        ),
        RectangleShape.tap(
          isTap: true,
          onTap: () {
            setState(() {
              index = 2;
            });
          },
          borderRadius: BorderRadius.circular(12),
          color: index == 2 ? AppColors.red300 : AppColors.white,
          padding: getMarginOrPadding(vertical: 8, horizontal: 35),
          child: CustomTextWidget(
            text: "طلباتي",
            style: getMediumTextStyle(
              color: index == 2 ? AppColors.white : AppColors.red300,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTapWidget extends StatelessWidget {
  const CustomTapWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return RectangleShape.tap(
      isTap: true,
      onTap: () {},
      borderRadius: BorderRadius.circular(12),
      color: AppColors.red300,
      padding: getMarginOrPadding(vertical: 8, horizontal: 35),
      child: CustomTextWidget(
        text: text,
        style: getMediumTextStyle(color: AppColors.white),
      ),
    );
  }
}
