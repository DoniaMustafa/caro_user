import 'package:caro_user_app/config/routes/app_routes.dart';
import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/core/utils/app_colors.dart';
import 'package:caro_user_app/core/widgets/custom_button_widget.dart';

import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';
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
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            72.vs,
            OnBoardingView(pageController: pageController),
            45.vs,
            PageIndicator(pageController: pageController),
            70.vs,
            CustomButtonWidget(
              function: () {},
              backgroundColor: AppColors.primaryColor,
              child:  CustomTextWidget(
              text: "تسجيل دخول",
        style: getMediumTextStyle(color: AppColors.white, fontSize: 13),
      ),
            ),
            18.vs,
            CustomButtonWidget(
                 function: () {
                _nextPage();
              },
              backgroundColor: AppColors.white,
                 child:  CustomTextWidget(
              text: "انشاء حساب",
        style: getMediumTextStyle(color: AppColors.primaryColor, fontSize: 13),
      ),
          
            ),
          ],
        ),
      ),
    );
  }
}
