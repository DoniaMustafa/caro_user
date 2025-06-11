import 'package:caro_user_app/core/extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';
import '../../../../core/utils/assats_file.dart';
import '../../../../core/widgets/custom_svg.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    List<Map> items = [
      {"image": AppAssets().onBoarding1, "title": "البحث عن المنتجات"},
      {"image": AppAssets().onBoarding2, "title": "متابعة الطلب"},
      {"image": AppAssets().onBoarding1, "title": "البحث عن المنتجات"},
    ];
    return SizedBox(
      height: 460.h,
      child: Center(
        child: PageView.builder(
          itemCount: 3,
          controller: pageController,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 210.w,
                  height: 234.h,
                  child: CustomSvg.assets(asset: items[index]["image"]),
                ),
                70.vs,
                CustomTextWidget(
                  text: items[index]["title"],
                  style: getMediumTextStyle(
                    fontSize: 18,
                    color: AppColors.primaryColor,
                  ),
                ),
                10.vs,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
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
