import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/features/auth/presentation/widget/otp/pin_code.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.children(
      isBack: true,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        22.vs,
        CustomSvg.assets(asset: AppAssets().verify),
        39.vs,
        CustomTextWidget(
          text: 'الرجاء ادخال الرمز للمتابعة',
          style: getMediumTextStyle(
            fontSize: 18,
            color: AppColors.primaryColor,
          ),
        ),
        12.vs,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'لقد أرسلنا رمز التحقق برسالة نصية الى ',
                style: getRegularTextStyle(color: AppColors.grey800),
              ),
              TextSpan(
                text: '+96612345678',
                style: getRegularTextStyle(color: AppColors.primaryColor),
              ),
            ],
          ),
        ),
        38.vs,
        AppCardBackground(
          child: Column(
            children: [
              const CustomTextWidget(text: 'رمز التحقق'),
              35.vs,
              const BuildPinCode(),
              35.vs,
              CustomElevatedButton.icon(
                onPressed: () {
                  Routes.signUpRoute.moveTo;
                },
                text: 'ارسال',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
