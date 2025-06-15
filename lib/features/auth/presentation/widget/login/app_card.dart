import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/utils/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';

class AppCard extends StatelessWidget {
  AppCard({super.key});
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
                text:  AppStrings.phoneNumber.trans,
                style: getSemiboldTextStyle(fontSize: 12),
              ),
              10.vs,
              PhoneFormField(controller: phone),
              20.vs,
              CustomTextWidget(
                textAlign: TextAlign.start,
                text:AppStrings.password.trans,
                style: getSemiboldTextStyle(fontSize: 12),
              ),
              10.vs,
              PasswordFormField(controller: password),
            ],
          ).withPadding(horizontal: 20),
          5.vs,
          GestureDetector(
            onTap: () => Routes.forgetPassRoute.moveTo,
            child: CustomTextWidget(
              textAlign: TextAlign.end,
              text: AppStrings.forgetPasswordAsk.trans,
              style: getRegularTextStyle(
                color: AppColors.primaryColor,
                fontSize: 12,
              ),
            ),
          ).withPadding(start: 20),
          32.vs,
          CustomElevatedButton.text(
            onPressed: () {
              Routes.bottomNavigationRoute.moveTo;
            },
            text:AppStrings.login.trans,
          ),
          10.vs,
          CustomOutlineButton(
            onPressed: () {
              Routes.signUpPyPhoneRoutes.moveTo;
              // Routes.signUpRoute.moveTo;
            },
            text:AppStrings.createAccount.trans,
          ),
        ],
      ),
    );
  }
}
