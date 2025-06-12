import 'dart:developer';

import 'package:caro_user_app/core/extension.dart';
import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../core/widgets/custom_button_widget.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import '../../../../core/widgets/form_field/custom_text_form.dart';
import '../../../../core/widgets/form_field/email_form_field.dart';
import '../../../../core/widgets/form_field/password_form_field.dart';

class ContainerOfBody extends StatelessWidget {
  const ContainerOfBody({super.key});

  void _forwardToLogin() {
    Routes.loginRoute.moveToAndRemoveCurrent;
  }

  FormFieldValidator<String> checkValidate() => (value) {
    if (value!.isEmptyOrNull) {
      log("Field Can't be empty");
    } else {
      log("Okkk");
    }
  };
  FormFieldValidator<String> checkPasswordValidate() => (value) {
    if (value!.validatePassword.isNull) {
      log("Password is Ok");
    } else {
      log("Password is not Ok");
    }
  };

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confPasswordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    var formKey = GlobalKey<FormState>();

    return Container(
      width: 335.w,
      height: 511.w,
      padding: getMarginOrPadding(horizontal: 19),
      decoration: BoxDecoration(
        color: const Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextWidget(
              text: "الاسم كاملا",
              style: getMediumTextStyle(fontSize: 12),
            ),
            7.vs,
            CustomTextFormField(
              validator: checkValidate(),
              suffixIcon: const Icon(
                Icons.person,
                color: AppColors.primaryColor,
              ),
              controller: nameController,
              hintText: "كتابه الاسم",
              hintTextDirection: TextDirection.rtl,
              textDirection: TextDirection.rtl,
              isFill: true,
              hintStyle: getRegularTextStyle(
                fontSize: 12,
                color: const Color(0xffB1B1B1),
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
              onValidate: checkValidate(),
              controller: emailController,
              hintText: "اكتب البريد الالكتروني",
              suffixIcon: const Icon(
                Icons.email,
                color: AppColors.primaryColor,
              ),

              hintTextDirection: TextDirection.rtl,
              textDirection: TextDirection.rtl,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none,
              ),
              isFill: true,
              hintStyle: getRegularTextStyle(
                fontSize: 12,
                color: const Color(0xffB1B1B1),
              ),
            ),
            18.vs,
            CustomTextWidget(
              text: "كملة المرور",
              style: getMediumTextStyle(fontSize: 12),
            ),
            7.vs,
            PasswordFormField(
              onValidate: checkPasswordValidate(),
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
                color: const Color(0xffB1B1B1),
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

              onValidate: checkPasswordValidate(),
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
                color: const Color(0xffB1B1B1),
              ),
            ),
            24.vs,
            CustomButtonWidget(
              backgroundColor: AppColors.primaryColor,
              function: () {
                formKey.currentState!.validate();
              },
              child: CustomTextWidget(
                text: "إنشاء حساب",
                style: getMediumTextStyle(color: AppColors.white),
              ),
            ),
            14.vs,
            CustomButtonWidget(
              backgroundColor: AppColors.white,
              function: () {
                _forwardToLogin();
              },
              child: CustomTextWidget(
                text: "تسجيل الدخول",
                style: getMediumTextStyle(color: AppColors.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
