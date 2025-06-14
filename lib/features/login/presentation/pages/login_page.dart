import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/core/utils/app_colors.dart';
import 'package:caro_user_app/core/utils/app_style.dart';
import 'package:caro_user_app/core/utils/assats_file.dart';
import 'package:caro_user_app/core/utils/size_utils.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../config/routes/app_routes_helper.dart';
import '../../../../core/widgets/backward_icon.dart';
import '../widgets/container_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          BackwardIcon(
            onPressed: () {
              pop(Routes.onBoardRoute);
            },
          ),
        ],
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomNetworkImage.circular(
                imageUrl: AppAssets().logo,
                defaultAsset: AppAssets().logo,
                radius: 100,
              ),
              33.vs,
              CustomTextWidget(
                text: "تسجيل الدخول",
                style: getMediumTextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 18,
                ),
              ),
              12.vs,
              CustomTextWidget(
                text: "أدخل رقم الجوال لإنشاء حساب أو لتسجيل الدخول",
                style: getRegularTextStyle(color: const Color(0xff858585)),
              ),
              38.vs,
              const ContainerOfBody(),
              
            ],
          ),
        ),
      ),
    );
  }
}
