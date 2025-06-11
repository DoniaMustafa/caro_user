import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/core/utils/app_colors.dart';
import 'package:caro_user_app/core/utils/assats_file.dart';
import 'package:caro_user_app/core/utils/size_utils.dart';
import 'package:caro_user_app/core/widgets/custom_button_widget.dart';
import 'package:caro_user_app/core/widgets/custom_icon.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/core/widgets/custom_svg.dart';
import 'package:caro_user_app/core/widgets/custom_text_widget.dart';
import 'package:caro_user_app/core/widgets/form_field/email_form_field.dart';
import 'package:caro_user_app/core/widgets/form_field/password_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';
import '../../../../core/widgets/form_field/custom_text_form.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [const BackwardIcon()],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              18.vs,
              const TitleWidget(),
              38.vs,
              const ContainerOfBody(),
            ],
          ),
        ),
      ),
    );
  }
}

class BackwardIcon extends StatelessWidget {
  const BackwardIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getMarginOrPadding(end: 20),
      child: CircleAvatar(
        backgroundColor: Colors.grey[100],
        child: IconButton(
          onPressed: () {},
          icon: const CustomIcon(
            icon: Icons.arrow_forward_ios,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextWidget(
          text: "انشاء حساب جديد",
          style: getBoldTextStyle(color: AppColors.primaryColor, fontSize: 18),
        ),
        12.vs,
        CustomTextWidget(
          text: "يرجى تعبئة البيانات التالية لإنشاء حساب جديد",
          style: getRegularTextStyle(color: const Color(0xff858585)),
        ),
      ],
    );
  }
}

class ContainerOfBody extends StatelessWidget {
  const ContainerOfBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confPasswordController = TextEditingController();
    TextEditingController nameController = TextEditingController();

    return Container(
      width: 335.w,
      height: 511.h,
      padding: getMarginOrPadding(horizontal: 19),
      decoration: BoxDecoration(
        color: const Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          24.vs,
          CustomTextWidget(
            text: "الاسم كاملا",
            style: getMediumTextStyle(fontSize: 12),
          ),
          7.vs,
          CustomTextFormField(
            suffixIcon: const Icon(Icons.person, color: AppColors.primaryColor),
            controller: nameController,
            hintText: "كتابه الاسم",
            hintTextDirection: TextDirection.rtl,
            textDirection: TextDirection.rtl,
            isFill: true,
            hintStyle: getRegularTextStyle(
              fontSize: 12,
              color: Color(0xffB1B1B1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide.none,
            ),
          ),
          18.vs,
          CustomTextWidget(
            text: "البريد الالكتروني",
            style: getMediumTextStyle(fontSize: 12),
          ),
          7.vs,
          EmailFormField(
            controller: emailController,
            hintText: "اكتب البريد الالكتروني",
            suffixIcon: const Icon(Icons.email, color: AppColors.primaryColor),

            hintTextDirection: TextDirection.rtl,
            textDirection: TextDirection.rtl,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide.none,
            ),
            isFill: true,
            hintStyle: getRegularTextStyle(
              fontSize: 12,
              color: Color(0xffB1B1B1),
            ),
          ),
          18.vs,
          CustomTextWidget(
            text: "كملة المرور",
            style: getMediumTextStyle(fontSize: 12),
          ),
          7.vs,
          PasswordFormField(
            suffixIcon: const Icon(
              Icons.remove_red_eye,
              color: AppColors.primaryColor,
            ),
            controller: passwordController,
            hintTextDirection: TextDirection.rtl,
            textDirection: TextDirection.rtl,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide.none,
            ),
            isFill: true,
            hintText: 'كتابة كملة المرور',
            hintStyle: getRegularTextStyle(
              fontSize: 12,
              color: Color(0xffB1B1B1),
            ),
          ),
          18.vs,
          CustomTextWidget(
            text: "اعادة كملة المرور",
            style: getMediumTextStyle(fontSize: 12),
          ),
          7.vs,
          PasswordFormField(
            suffixIcon: const Icon(
              Icons.remove_red_eye,
              color: AppColors.primaryColor,
            ),
            controller: confPasswordController,
            hintTextDirection: TextDirection.rtl,
            textDirection: TextDirection.rtl,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide.none,
            ),
            isFill: true,
            hintText: 'كتابة كملة المرور',
            hintStyle: getRegularTextStyle(
              fontSize: 12,
              color: Color(0xffB1B1B1),
            ),
          ),
          24.vs,
          CustomButtonWidget(
            backgroundColor: AppColors.primaryColor,
            function: () {},
            child: CustomTextWidget(
              text: "إنشاء حساب",
              style: getMediumTextStyle(color: AppColors.white),
            ),
          ),
          14.vs,
          CustomButtonWidget(
            backgroundColor: AppColors.white,
            function: () {},
            child: CustomTextWidget(
              text: "تسجيل الدخول",
              style: getMediumTextStyle(color: AppColors.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
