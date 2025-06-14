import 'package:caro_user_app/core/export/export.dart';

class AppCard extends StatelessWidget {
   AppCard({super.key});
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  AppCardBackground(
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
          CustomElevatedButton.text(
            onPressed: () {
              // Routes.signUpPyPhoneRoutes.moveTo;
            },
            text: 'تسجيل الدخول',
          ),
          10.vs,
          CustomOutlineButton(
            onPressed: () {

              Routes.signUpPyPhoneRoutes.moveTo;
              // Routes.signUpRoute.moveTo;
            },
            text: 'إنشاء حساب',
          ),
        ],
      ),
    );
  }
}
