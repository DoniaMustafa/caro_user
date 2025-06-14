import 'package:caro_user_app/core/export/export.dart';

class OrderInfoDetailsOfMyOrders extends StatelessWidget {
  OrderInfoDetailsOfMyOrders.withIcon({
    super.key,
    required this.text,
    required this.details,
    this.icon,
    this.image,
    this.prefixIcon = false,
  }) : isIcon = true;
  OrderInfoDetailsOfMyOrders.withImage({
    super.key,
    required this.text,
    required this.details,
    this.icon,
    this.image,
    this.prefixIcon = false,
  }) : isIcon = false;
  final String text;
  final String details;
  IconData? icon;
  final String? image;
  bool isIcon;
  final bool prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (prefixIcon) CustomSvg.assets(asset: AppAssets().riyalSaudi),
        if (prefixIcon) 5.hs,
        RichText(
          text: TextSpan(
            style: getRegularTextStyle(color: AppColors.primaryColor),
            children: <TextSpan>[
              TextSpan(text: text, style: getRegularTextStyle()),
              TextSpan(
                text: ' : $details ',
                style: getRegularTextStyle(color: AppColors.black),
              ),
            ],
          ),
        ),

        isIcon
            ? CustomIcon(
              icon: icon!,
              color: AppColors.primaryColor,
              size: iconSize(11, 11),
            )
            : CustomSvg.assets(asset: image),
      ],
    );
  }
}
