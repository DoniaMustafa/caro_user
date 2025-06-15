import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/utils/enums.dart';
import 'package:caro_user_app/features/auth/presentation/pages/otp_page.dart';

class ResetPasswordCard extends StatelessWidget {
  ResetPasswordCard({super.key});
  TextEditingController confirmPassword = TextEditingController();
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
                textAlign: TextAlign.start,
                text: 'كملة المرور',
                style: getSemiboldTextStyle(fontSize: 12),
              ),
              10.vs,
              PasswordFormField(controller: password),
              10.vs,
              CustomTextWidget(
                textAlign: TextAlign.start,
                text: 'تأكيد كملة المرور',
                style: getSemiboldTextStyle(fontSize: 12),
              ),
              10.vs,
              PasswordFormField(controller: confirmPassword),
            ],
          ).withPadding(horizontal: 20),

          32.vs,
          CustomElevatedButton.text(
            onPressed: () {
              Routes.loginRoute.moveTo;
            },
            text: 'استرجاع كلمة المرور',
          ),
        ],
      ),
    );
  }
}
