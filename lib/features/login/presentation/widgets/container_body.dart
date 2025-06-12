import 'package:caro_user_app/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../core/widgets/custom_button_widget.dart';
import '../../../../core/widgets/custom_text_widget.dart';

import '../../../../core/widgets/form_field/password_form_field.dart';

class ContainerOfBody extends StatelessWidget {
  const ContainerOfBody({super.key});

  void _forwardToSignup() {
    Routes.signUpRoute.moveToAndRemoveCurrent;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Container(
      width: 335.w,
      height: 334.w,
      padding: getMarginOrPadding(horizontal: 19),
      decoration: BoxDecoration(
        color: const Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextWidget(
            text: "رقم الجوال",
            style: getMediumTextStyle(fontSize: 12),
          ),
          7.vs,
          IntlPhoneField(
            flagsButtonPadding: EdgeInsetsGeometry.all(0),
            controller: phoneController,
            dropdownIcon: const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.black12,
            ),
            textAlign: TextAlign.end,
            initialCountryCode: "SA",
            disableLengthCheck: true,

            decoration: InputDecoration(
              suffixIcon: Icon(Icons.phone, color: AppColors.primaryColor),
              filled: true,
              fillColor: AppColors.white,
              hintTextDirection: TextDirection.ltr,
              hintStyle: getRegularTextStyle(
                fontSize: 12,
                color: const Color(0xffB1B1B1),
              ),
              isDense: true,
              hintText: 'رقم الجوال',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),

                borderSide: BorderSide.none,
              ),
            ),
          ),
          20.vs,

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
              color: const Color(0xffB1B1B1),
            ),
          ),

          32.vs,
          CustomButtonWidget(
            backgroundColor: AppColors.primaryColor,
            function: () {},
            child: CustomTextWidget(
              text: "تسجيل الدخول",
              style: getMediumTextStyle(color: AppColors.white),
            ),
          ),
          14.vs,
          CustomButtonWidget(
            backgroundColor: AppColors.white,
            function: () {
              _forwardToSignup();
            },
            child: CustomTextWidget(
              text: "انشاء حساب",
              style: getMediumTextStyle(color: AppColors.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
