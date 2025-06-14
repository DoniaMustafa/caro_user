import 'package:caro_user_app/config/routes/app_routes.dart';
import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/core/utils/size_utils.dart';

import 'package:flutter/material.dart';

import '../../../../core/widgets/button_shape/custom_elevated_button.dart';
import '../../../../core/widgets/button_shape/custom_outline_button.dart';
import '../widget/onboarding_view.dart';
import '../widget/page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  void _nextPage(int index) {
    switch (index) {
      case 1:
        Routes.loginRoute.moveTo;

      case 2:
        Routes.signUpPyPhoneRoutes.moveTo;
    }
  }

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      body: Padding(
        padding: getMarginOrPadding(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            OnBoardingView(pageController: pageController),
            45.vs,
            PageIndicator(pageController: pageController),
            70.vs,
            CustomElevatedButton.text(
              onPressed: () {
                _nextPage(1);
              },
              text: "تسجيل دخول",
            ),
            13.vs,
            CustomOutlineButton(
              onPressed: () {
                _nextPage(2);
              },
              text: "انشاء حساب",
            ),
            // 50.vs,
          ],
        ),
      ),
    );
  }
}
