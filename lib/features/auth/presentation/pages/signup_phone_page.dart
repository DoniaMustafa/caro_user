import 'package:caro_user_app/config/routes/app_routes_helper.dart';
import 'package:caro_user_app/core/utils/assats_file.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/core/widgets/form_field/phone_form_field.dart';
import 'package:caro_user_app/core/widgets/shapes/circel_shape.dart';
import 'package:caro_user_app/core/widgets/shapes/rectangle_shape.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/export/export.dart';

class SignupPyPhonePage extends StatelessWidget {
  SignupPyPhonePage({super.key});
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
        CustomTextWidget(
          text: 'إنشاء حساب',
          style: getSemiboldTextStyle(fontSize: 18,color: AppColors.primaryColor),
        ),
        12.vs,

        CustomTextWidget(
          text: 'أدخل رقم الجوال لإنشاء حساب',
          style: getRegularTextStyle(color: AppColors.grey800),
        ),
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
                ],
              ).withPadding(horizontal: 20),
              32.vs,
              CustomElevatedButton.text(
                onPressed: () {
                  Routes.OtpRoute.moveTo;
                },
                text: 'إنشاء حساب',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
