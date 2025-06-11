import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/core/utils/app_colors.dart';

import 'package:flutter/material.dart';

import '../widget/onboarding_button.dart';
import '../widget/onboarding_view.dart';
import '../widget/page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            72.vs,
            OnBoardingView(pageController: pageController),
            45.vs,
            PageIndicator(pageController: pageController),
            70.vs,
            const OnBoardingButton(
              backgroundColor: AppColors.primaryColor,
              textColor: AppColors.white,
              text: "تسجيل دخول",
            ),
            18.vs,
            const OnBoardingButton(
              backgroundColor: AppColors.white,
              textColor: AppColors.primaryColor,
              text: "انشاء حساب",
            ),
          ],
        ),
      ),
    );
  }
}
