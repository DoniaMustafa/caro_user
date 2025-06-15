import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/core/widgets/shapes/rectangle_shape.dart';
import 'package:caro_user_app/features/orders/presentation/pages/active_order.dart';
import 'package:caro_user_app/features/orders/presentation/pages/order_details.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({super.key});

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.children(
      isBack: false,
      title: "طلباتي",
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                3,
                (index) => Expanded(
                  child: RectangleShape.tap(
                    isTap: true,
                    alignment: AlignmentDirectional.center,
                    margin: getMarginOrPadding(horizontal: 3),
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    borderRadius: BorderRadius.circular(12),
                    color:
                        currentIndex == index
                            ? AppColors.red300
                            : AppColors.white,
                    padding: getMarginOrPadding(vertical: 8),
                    child: CustomTextWidget(
                      textAlign: TextAlign.center,
                      text:
                          index == 0
                              ? "المنتهية"
                              : index == 1
                              ? "النشطة"
                              : "طلباتي",
                      style: getMediumTextStyle(
                        color:
                            currentIndex == index
                                ? AppColors.white
                                : AppColors.red300,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),

              // [
              //   RectangleShape.tap(
              //     isTap: true,
              //     onTap: () {
              //       setState(() {
              //         index = 0;
              //       });
              //     },
              //     borderRadius: BorderRadius.circular(12),
              //     color: index == 0 ? AppColors.red300 : AppColors.white,
              //     padding: getMarginOrPadding(vertical: 8, horizontal: 35),
              //     child: CustomTextWidget(
              //       text: "المنتهية",
              //       style: getMediumTextStyle(
              //         color: index == 0 ? AppColors.white : AppColors.red300,
              //         fontSize: 16,
              //       ),
              //     ),
              //   ),6.hs,
              //   RectangleShape.tap(
              //     isTap: true,
              //     onTap: () {
              //       setState(() {
              //         index = 1;
              //       });
              //     },
              //     borderRadius: BorderRadius.circular(12),
              //     color: index == 1 ? AppColors.red300 : AppColors.white,
              //     padding: getMarginOrPadding(vertical: 8, horizontal: 35),
              //     child: CustomTextWidget(
              //       text: "النشطة",
              //       style: getMediumTextStyle(
              //         color: index == 1 ? AppColors.white : AppColors.red300,
              //         fontSize: 16,
              //       ),
              //     ),
              //   ),6.hs,
              //   RectangleShape.tap(
              //     isTap: true,
              //     onTap: () {
              //       setState(() {
              //         index = 2;
              //       });
              //     },
              //     borderRadius: BorderRadius.circular(12),
              //     color: index == 2 ? AppColors.red300 : AppColors.white,
              //     padding: getMarginOrPadding(vertical: 8, horizontal: 35),
              //     child: CustomTextWidget(
              //       text: "طلباتي",
              //       style: getMediumTextStyle(
              //         color: index == 2 ? AppColors.white : AppColors.red300,
              //         fontSize: 16,
              //       ),
              //     ),
              //   ),
              // ],
            ),

            18.vs,
            if (currentIndex == 2) ...[
              const MyOrdersViewPage(),
            ] else if (currentIndex == 1) ...[
              const ActiveOrder(),
            ] else if (currentIndex == 0) ...[
              const MyOrdersViewPage(),
            ],
          ],
        ),
      ],
    );
  }
}

class MyOrdersViewPage extends StatelessWidget {
  const MyOrdersViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomOrderWidget(isWaiting: false),
        14.vs,
        const CustomOrderWidget(isWaiting: true),
        14.vs,
        const OfferWidget(),
      ],
    );
  }
}

class OrderInformationDetails extends StatelessWidget {
  OrderInformationDetails.withIcon({
    super.key,
    required this.text,
    required this.details,
    this.icon,
    this.image,
    this.prefixIcon = false,
  }) : isIcon = true;
  OrderInformationDetails.withImage({
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
      mainAxisSize: MainAxisSize.min,
      children: [
        if (prefixIcon) CustomSvg.assets(asset: AppAssets().riyalSaudi),
        if (prefixIcon) 5.hs,
        RichText(
          textAlign: TextAlign.end,
          text: TextSpan(
            style: getRegularTextStyle(color: AppColors.red300),
            children: <TextSpan>[
              TextSpan(
                text: text,
                style: getRegularTextStyle(
                  fontSize: 12,
                  color: AppColors.primaryColor,
                ),
              ),
              TextSpan(
                text: ' : $details ',
                style: getRegularTextStyle(
                  color: AppColors.black,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        2.hs,
        isIcon
            ? CustomIcon(
              icon: icon!,
              color: AppColors.primaryColor,
              size: iconSize(1.2 * 11, 1.2 * 11),
            )
            : CustomSvg.assets(asset: image),
      ],
    ).withPadding(end: 10);
  }
}

class CustomOrderWidget extends StatelessWidget {
  const CustomOrderWidget({super.key, required this.isWaiting});
  final bool isWaiting;
  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      padding: getMarginOrPadding(start: 15, end: 10, top: 20, bottom: 19),
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              2,
              (index) => Expanded(
                child: OrderInformationDetails.withIcon(
                  text: index == 0 ? "تاريخ التسليم" : "تاريخ الاستلام",
                  details: index == 0 ? "24/5/2025" : "24/5/2025",
                  icon: Icons.calendar_month,
                ),
              ),
            ),
          ),
          15.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              2,
              (index) => Expanded(
                child: OrderInformationDetails.withImage(
                  prefixIcon: index == 0 ? true : false,
                  text: index == 0 ? "مبلغ التأجير " : "نوع الكيلو",
                  details: index == 0 ? "1500" : "مفتوح",
                  image:
                      index == 0
                          ? AppAssets().moneyIcon
                          : AppAssets().speedIcon,
                ),
              ),
            ),
          ),
          11.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              2,
              (index) => Expanded(
                child: OrderInformationDetails.withImage(
                  prefixIcon: index == 0 ? true : false,
                  text: index == 0 ? "نوع الاستلام " : "نوع الدفع",
                  details: index == 0 ? "من الفرع" : "مدى",
                  image:
                      index == 0 ? AppAssets().puzzle : AppAssets().moneyIcon,
                ),
              ),
            ),
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

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      borderRadius: BorderRadius.circular(12),
      padding: getMarginOrPadding(horizontal: 16, top: 12, bottom: 14),

      // margin: getMarginOrPadding(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RichText(
                text: TextSpan(
                  text: 'نوع الدفع ',
                  style: getMediumTextStyle(color: AppColors.grey),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' : كاش',
                      style: getRegularTextStyle(color: AppColors.grey),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextWidget(
                    text: "سامي عبدالله",
                    style: getSemiboldTextStyle(),
                  ),
                  Row(
                    children: [
                      CustomTextWidget(
                        text: "4.7",
                        style: getMediumTextStyle(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const CustomIcon(
                        icon: Icons.star,
                        color: AppColors.yellow,
                      ),
                    ],
                  ),
                ],
              ),
              8.hs,
              CustomNetworkImage.circular(
                radius: 40,
                imageUrl: AppAssets().logo,
                defaultAsset: AppAssets().logo,
              ),
            ],
          ),
          15.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIcon(
                icon: Icons.flag_outlined,
                color: Colors.green,
                size: iconSize(20, 20),
              ),
              10.hs,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  getHorizontalSize(20).toInt(),
                  (i) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      width: 6,
                      height: 3,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              10.hs,

              CustomIcon(
                icon: Icons.gps_fixed_outlined,
                color: Colors.blue,
                size: iconSize(20, 20),
              ),
            ],
          ),
          14.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextWidget(
                text: "تعبئة كفر",
                style: getMediumTextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 12,
                ),
              ),
              6.hs,
              CustomSvg.assets(asset: AppAssets().puzzle),
              58.hs,
              CustomTextWidget(
                text: "منذ ساعة",
                style: getMediumTextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 12,
                ),
              ),
              6.hs,
              CustomIcon(
                icon: Icons.timer_outlined,
                color: AppColors.primaryColor,
                size: iconSize(14, 14),
              ),
              58.hs,

              CustomSvg.assets(
                asset: AppAssets().riyalSaudi,
                color: AppColors.primaryColor,
              ),
              5.hs,
              CustomTextWidget(
                text: "1500",
                style: getMediumTextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 12,
                ),
              ),
              6.hs,
              CustomSvg.assets(asset: AppAssets().moneyIcon),
            ],
          ),
          14.vs,
          CustomElevatedButton.text(onPressed: () {}, text: "قبول العرض"),
        ],
      ),
    );
  }
}
