import 'package:caro_user_app/core/export/export.dart';

import '../../../../core/widgets/custom_network_image.dart';
import '../../../../core/widgets/shapes/rectangle_shape.dart';
import 'order_info_details_of_my_orders.dart';

class OrderDetailsMyOrders extends StatelessWidget {
  const OrderDetailsMyOrders({super.key, required this.isWaiting});
  final bool isWaiting;
  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      padding: getMarginOrPadding(start: 1.w, end: 5.w, top: 20, bottom: 19),
      // margin: getMarginOrPadding(horizontal: 20),
      borderRadius: BorderRadius.circular(12),
      color: AppColors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 10.w,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextWidget(
                    text: "تأجير سيارة كيا سيراتو ",
                    style: getSemiboldTextStyle(fontSize: 16),
                  ),
                  18.vs,
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: getMediumTextStyle(
                            color: AppColors.primaryColor,
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: 'عدد ايام الايجار'),
                            TextSpan(
                              text: ' : 4 ايام',
                              style: getMediumTextStyle(color: AppColors.black),
                            ),
                          ],
                        ),
                      ),
                      6.hs,
                      CustomIcon(
                        icon: Icons.calendar_month,
                        color: AppColors.primaryColor,
                        size: iconSize(11, 11),
                      ),
                    ],
                  ),
                  18.vs,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: getMediumTextStyle(
                            color: AppColors.primaryColor,
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: 'الموديل', style: TextStyle()),
                            TextSpan(
                              text: ' : 2024',
                              style: getMediumTextStyle(
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      6.hs,
                      CustomSvg.assets(asset: AppAssets().puzzle),
                    ],
                  ),
                ],
              ),
              CustomNetworkImage.rectangle(
                width: 100,
                height: 100,
                imageUrl: AppAssets().ordersCar,
                defaultAsset: AppAssets().ordersCar,
              ),
            ],
          ),
          14.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: OrderInfoDetailsOfMyOrders.withIcon(
                  text: "تاريخ التسليم",
                  details: "24/5/2025",
                  icon: Icons.calendar_month,
                ),
              ),
              Expanded(
                child: OrderInfoDetailsOfMyOrders.withIcon(
                  text: "تاريخ الاستلام",
                  details: "24/5/2025",
                  icon: Icons.calendar_month,
                ),
              ),
            ],
          ),
          15.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OrderInfoDetailsOfMyOrders.withImage(
                prefixIcon: true,
                text: "مبلغ التأجير ",
                details: "1500",
                image: AppAssets().moneyIcon,
              ),
              59.hs,
              OrderInfoDetailsOfMyOrders.withImage(
                text: "نوع الكيلو",
                details: "مفتوح",
                image: AppAssets().speedIcon,
              ),
            ],
          ),
          11.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              OrderInfoDetailsOfMyOrders.withImage(
                text: "نوع الاستلام",
                details: "من الفرع",
                image: AppAssets().puzzle,
              ),
              65.hs,
              OrderInfoDetailsOfMyOrders.withImage(
                text: "نوع الدفع",
                details: "مدى",
                image: AppAssets().moneyIcon,
              ),
            ],
          ),
          16.vs,
          isWaiting
              ? CustomElevatedButton.text(
                backgroundColor: AppColors.yellow,
                onPressed: () {},
                text: "قبول الطلب",
              )
              : CustomElevatedButton.text(
                onPressed: () {
                  isWaiting ? null : Routes.orderDetails.moveTo;
                },
                text: "التفاصيل",
              ),
          19.vs,
        ],
      ),
    );
  }
}
