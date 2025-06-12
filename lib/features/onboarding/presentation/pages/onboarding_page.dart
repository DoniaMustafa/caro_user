import 'package:caro_user_app/config/routes/app_routes.dart';
import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/core/utils/app_colors.dart';
import 'package:caro_user_app/core/utils/size_utils.dart';
import 'package:caro_user_app/core/widgets/custom_button_widget.dart';

import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';
import '../../../../core/widgets/button_shape/custom_elevated_button.dart';
import '../../../../core/widgets/button_shape/custom_outline_button.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import '../widget/onboarding_view.dart';
import '../widget/page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  void _nextPage() {
    Routes.signUpRoute.moveTo;
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
            CustomElevatedButton(onPressed: () {}, text: "تسجيل دخول"),
            18.vs,
            CustomOutlineButton(
              onPressed: () {
                _nextPage();
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
