import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/core/utils/app_list_constant.dart';
import 'package:caro_user_app/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';
import '../../../../core/widgets/custom_svg.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: 3,
        controller: pageController,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: CustomSvg.assets(
                  asset: AppListConstant.onBoardingData[index].image,
                ).withPadding(vertical: 90),
              ),
              // 70.vs,
              CustomTextWidget(
                text: AppListConstant.onBoardingData[index].title!,
                style: getMediumTextStyle(
                  fontSize: 18,
                  color: AppColors.primaryColor,
                ),
              ),
              12.vs,
              Padding(
                padding: getMarginOrPadding(horizontal: 40),
                child: CustomTextWidget(
                  text: AppListConstant.onBoardingData[index].subtitle!,
                  style: getRegularTextStyle(color: const Color(0xff858585)),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
