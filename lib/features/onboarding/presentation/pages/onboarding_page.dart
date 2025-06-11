import 'package:caro_user_app/core/utils/app_colors.dart';
import 'package:caro_user_app/core/utils/app_style.dart';
import 'package:caro_user_app/core/utils/assats_file.dart';
import 'package:caro_user_app/core/widgets/custom_svg.dart';
import 'package:caro_user_app/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          OnBoardingView(pageController: pageController),
          PageIndicator(pageController: pageController),
          const SizedBox(height: 70),
          const OnBoardingButton(
            backgroundColor: AppColors.primaryColor,
            textColor: AppColors.white,
            text: "تسجيل دخول",
          ),
          const SizedBox(height: 18),
          const OnBoardingButton(
            backgroundColor: AppColors.white,
            textColor: AppColors.primaryColor,
            text: "انشاء حساب",
          ),
        ],
      ),
    );
  }
}

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    List<Map> items = [
     {"image": AppAssets().onBoarding1 , "title": "البحث عن المنتجات" , },
     {"image": AppAssets().onBoarding2 , "title": "متابعة الطلب" , },
     {"image": AppAssets().onBoarding1 , "title": "البحث عن المنتجات" , },
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Center(
        child: PageView.builder(
          itemCount: 3,
          controller: pageController,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSvg.assets(asset: items[index]["image"]),
                const SizedBox(height: 70),
                CustomTextWidget(
                  text: items[index]["title"],
                  style: getMediumTextStyle(
                    fontSize: 18,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: CustomTextWidget(
                    text:
                        "شكل توضع لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارج الشكل الخارج للنص أو شكل توضع لصفحة ما سيلهي القارئ عن التي يقرأها. ولذاستخدام طريقة تبدو",
                    style: getRegularTextStyle(color: const Color(0xff858585)),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 3,
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

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  });
  final String text;
  final Color textColor;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 335,
      height: 46,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.primaryColor, width: 1),
      ),
      color: backgroundColor,
      onPressed: () {},
      child: CustomTextWidget(
        text: text,
        style: getMediumTextStyle(color: textColor),
      ),
    );
  }
}
