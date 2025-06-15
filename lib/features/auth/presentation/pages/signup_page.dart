import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/core/widgets/shapes/rectangle_shape.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.children(
      mainAxisAlignment: MainAxisAlignment.start,
      backgroundColor: AppColors.white,
      isBack: true,
      children: [10.vs, TitleWidget(), 38.vs, ContainerOfBody(), 96.vs],
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

    return AppCardBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              24.vs,
              CustomTextWidget(
                text: "الاسم كاملا",
                style: getMediumTextStyle(fontSize: 12),
              ),
              7.vs,
              CustomTextFormField(
                suffixIcon: CustomIcon(
                  size: iconSize(14.01, 14),
                  icon: Icons.person,
                  color: AppColors.primaryColor,
                ),
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
                suffixIcon: CustomIcon(
                  icon: Icons.email,
                  color: AppColors.primaryColor,
                  size: iconSize(14, 10),
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
                isFill: true,
                controller: passwordController,
                hintText: "اعاده كلمه السر",
                hintTextDirection: TextDirection.rtl,
                hintStyle: getRegularTextStyle(color: AppColors.grey),
              ),
              18.vs,
              CustomTextWidget(
                text: "اعادة كملة المرور",
                style: getMediumTextStyle(fontSize: 12),
              ),
              7.vs,
              PasswordFormField(
                isFill: true,
                controller: confPasswordController,
                hintText: "اعاده كلمه السر",
                hintTextDirection: TextDirection.rtl,
                hintStyle: getRegularTextStyle(color: AppColors.grey),
              ),
              24.vs,
            ],
          ).withPadding(horizontal: 20),
          CustomElevatedButton.text(
            onPressed: () {
              Routes.loginRoute.pushAndRemoveAllUntil;
            },
            text: "انشاء حساب",
          ),
          // 3.vs,
          // CustomOutlineButton(
          //   onPressed: () {
          //     // _nextPage();
          //   },
          //   text: "انشاء حساب",
          // ),
          17.vs,
        ],
      ),
    );
  }
}

/*
* Container(
      padding: getMarginOrPadding(horizontal: 19, vertical: 10),
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
          CustomElevatedButton.text(onPressed: () {}, text: "تسجيل دخول"),
          CustomOutlineButton(
            onPressed: () {
              // _nextPage();
            },
            text: "انشاء حساب",
          ),
          // CustomButtonWidget(
          //   backgroundColor: AppColors.primaryColor,
          //   function: () {},
          //   child: CustomTextWidget(
          //     text: "إنشاء حساب",
          //     style: getMediumTextStyle(color: AppColors.white),
          //   ),
          // ),
          // 14.vs,
          // CustomButtonWidget(
          //   backgroundColor: AppColors.white,
          //   function: () {},
          //   child: CustomTextWidget(
          //     text: "تسجيل الدخول",
          //     style: getMediumTextStyle(color: AppColors.primaryColor),
          //   ),
          // ),
        ],
      ),
    );*/
