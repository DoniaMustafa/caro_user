import 'package:caro_user_app/config/routes/app_routes_helper.dart';
import 'package:caro_user_app/core/utils/assats_file.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/core/widgets/form_field/phone_form_field.dart';
import 'package:caro_user_app/core/widgets/shapes/circel_shape.dart';
import 'package:caro_user_app/core/widgets/shapes/rectangle_shape.dart';

import '../../../../core/export/export.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.children(
      children: [
        67.vs,
        CustomNetworkImage.circular(
          imageUrl: AppAssets().logo,
          defaultAsset: AppAssets().logo,
          radius: 140,
        ),
        33.vs,
        CustomTextWidget(text: 'تسجيل الدخول'),
        12.vs,

        CustomTextWidget(text: 'أدخل رقم الجوال لإنشاء حساب أو لتسجيل الدخول '),
        38.vs,
        RectangleShape.withoutTap(
          color: AppColors.white300,
          margin: getMarginOrPadding(horizontal: 9),
          borderRadius: BorderRadiusDirectional.circular(20),
          padding: getMarginOrPadding(top: 24, bottom: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextWidget(
                    text: 'رقم الجوال',
                    style: getSemiboldTextStyle(fontSize: 12),
                  ),
                  10.vs,
                  PhoneFormField(controller: phone),
                  20.vs,
                  CustomTextWidget(
                    textAlign: TextAlign.start,
                    text: 'كملة المرور',
                    style: getSemiboldTextStyle(fontSize: 12),
                  ),
                  10.vs,
                  PasswordFormField(controller: password),
                ],
              ).withPadding(horizontal: 20),
              32.vs,
              CustomElevatedButton(onPressed: () {}, text: 'تسجيل الدخول'),
              10.vs,
              CustomOutlineButton(onPressed: () {}, text: 'إنشاء حساب'),
            ],
          ),
        ),
      ],
    );
  }
}
