import 'package:caro_user_app/core/export/export.dart';

import 'custom_base_button.dart';

class CustomElevatedButton extends StatelessWidget with BaseButton {
  CustomElevatedButton._();
  CustomElevatedButton.icon({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor,

  }) : isIcon = true;

  CustomElevatedButton.text({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor,
  }) : isIcon = false;
  bool? isIcon;
  @override
  Widget build(BuildContext context) {
    return isIcon.isTrue ? _elevatedButtonWithIcon : _elevatedButton;
  }

  get _elevatedButton => CustomBaseButton(
    margin: getMarginOrPadding(horizontal: 20),
    onPressed: onPressed,
    text: text!,

    color: backgroundColor?? AppColors.primaryColor,
    style: getMediumTextStyle(color: AppColors.white, fontSize: 13),
    boxShadow: boxShadow,
  );

  get _elevatedButtonWithIcon => CustomBaseButton(
    margin: getMarginOrPadding(horizontal: 20),
    onPressed: onPressed,
    text: text!,
    rightIcon: CustomSvg.assets(asset: AppAssets().send),
    color: AppColors.primaryColor,
    style: getMediumTextStyle(color: AppColors.white, fontSize: 13),
    boxShadow: boxShadow,
  );
  @override
  // TODO: implement onPressed
  VoidCallback? onPressed;

  @override
  // TODO: implement text
  String? text;
  Color? backgroundColor; 
  List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.051),
      offset: const Offset(0, 1),
      blurRadius: 3,
      spreadRadius: 0,
    ),
  ];
}
