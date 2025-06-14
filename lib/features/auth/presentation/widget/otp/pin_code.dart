import 'package:pinput/pinput.dart';

import '../../../../../core/export/export.dart';

class BuildPinCode extends StatefulWidget {
  const BuildPinCode({super.key});
  static TextEditingController pinController = TextEditingController();

  @override
  State<BuildPinCode> createState() => _BuildPinCodeState();
}

class _BuildPinCodeState extends State<BuildPinCode> {
  late PinTheme defaultPinTheme;

  late PinTheme focusedPinTheme = defaultPinTheme.copyDecorationWith(
    color: AppColors.white,
    border: Border.all(color: AppColors.white),
    borderRadius: BorderRadius.circular(10),
  );
  late PinTheme submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration!.copyWith(
      color: AppColors.white,
      border: Border.all(color: AppColors.white),
      borderRadius: BorderRadius.circular(10),
    ),
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    defaultPinTheme = PinTheme(
      width: 60.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      // padding: getPadding(horizontal: 5),
      margin: getMarginOrPadding(horizontal: 5),
      textStyle: getRegularTextStyle(fontSize: 16),
      // decoration: BoxDecoration(
      //   border: Border.all(color: AppColors.grey),
      //   borderRadius: BorderRadius.circular(10),
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pinput(
          controller: BuildPinCode.pinController,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          defaultPinTheme: defaultPinTheme,
          focusedPinTheme: focusedPinTheme,
          submittedPinTheme: submittedPinTheme,
          pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
          showCursor: true,
          validator: (otp) {
            // pinController.text = otp!;
            print(BuildPinCode.pinController.text);
          },
          pinAnimationType: PinAnimationType.scale,
        ),
      ],
    ).withPadding(horizontal: 20);
  }
}
