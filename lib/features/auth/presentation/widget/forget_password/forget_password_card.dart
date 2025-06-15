import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/utils/enums.dart';
import 'package:caro_user_app/features/auth/presentation/pages/otp_page.dart';

class ForgetPasswordCard extends StatelessWidget {
  ForgetPasswordCard({super.key});
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppCardBackground(
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
              Routes.otpRoute.moveToWithArgs({
                OtpPage.whichScreenKey: OtpRoute.password,
              });
            },
            text: 'استرجاع كلمة المرور',
          ),
        ],
      ),
    );
  }
}
