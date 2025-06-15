import 'package:caro_user_app/core/utils/app_list_constant.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/app_colors.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: AppListConstant.onBoardingData.length,
      effect: const WormEffect(
        dotColor: AppColors.grey,
        activeDotColor: AppColors.primaryColor,
        dotHeight: 5,
        dotWidth: 5,
        spacing: 8.0,
      ),
    );
  }
}
