import 'package:caro_user_app/core/export/export.dart';

import '../../../../../core/widgets/custom_network_image.dart';
import '../../../../../core/widgets/shapes/rectangle_shape.dart';

class OrderDetailsCardOfOrderDetails2 extends StatelessWidget {
  const OrderDetailsCardOfOrderDetails2({super.key});

  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12),
      padding: getMarginOrPadding(end: 16, start: 12, top: 16, bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextWidget(text: "ملاحظات", style: getMediumTextStyle()),
          10.vs,
          CustomTextWidget(
            textAlign: TextAlign.end,
            text:
                "هنا يتم كتابة تفاصيل الطلب كاملة ، من شرح المشكلة و . الخدمة المطلوبة قبل ارسال الطلب ، هنا يتم كتابة تفاصيل",
            style: getRegularTextStyle(color: AppColors.grey),
          ),
          20.vs,
          Row(
            children: [
              CustomSvg.assets(asset: AppAssets().riyalSaudi),
              CustomTextWidget(
                text: " 10 - 15",
                style: getMediumTextStyle(color: AppColors.primaryColor),
              ),
              const Spacer(),
              CustomTextWidget(
                text: "تكلفة الطلب",
                style: getMediumTextStyle(color: AppColors.primaryColor),
              ),
            ],
          ),
          23.vs,
          Row(
            children: [
              CustomTextWidget(
                text: "مدى ",
                style: getMediumTextStyle(color: AppColors.primaryColor),
              ),
              6.hs,
              CustomNetworkImage.rectangle(
                imageUrl: AppAssets().mada,
                defaultAsset: AppAssets().mada,
                height: 15.h,
                width: 20.w,
              ),

              const Spacer(),
              CustomTextWidget(
                text: "طريقة الدفع",
                style: getMediumTextStyle(color: AppColors.primaryColor),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
