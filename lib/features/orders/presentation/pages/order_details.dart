import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/core/widgets/shapes/rectangle_shape.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.children(
      padding: getMarginOrPadding(horizontal: 19),
      title: "تفاصيل الطلب",
      crossAxisAlignment: CrossAxisAlignment.end,
      isBack: true,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RectangleShape.withoutTap(
              color: AppColors.white,
              height: 220.h,
              borderRadius: BorderRadius.circular(12),
              width: MediaQuery.of(context).size.width,
              padding: getMarginOrPadding(top: 4, bottom: 9),

              child: Center(
                child: CustomTextWidget(
                  text: "بانتظار رفع فيديو السيارة من مكتب التأجير",
                  style: getMediumTextStyle(fontSize: 12),
                ),
              ),
            ),
            const ContainerOfCarDetails(),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: [
                      CustomTextWidget(
                        text: "المبلغ - نوع الكيلو",
                        style: getRegularTextStyle(),
                      ),
                      8.vs,
                      RectangleShape.tap(
                        padding: getMarginOrPadding(
                          top: 13,
                          bottom: 7,
                          end: 17,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.white,
                        child: CustomTextWidget(
                          text: "24/5/2025",
                          style: getRegularTextStyle(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                11.hs,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomTextWidget(
                        text: "المبلغ - نوع الكيلو",
                        style: getRegularTextStyle(),
                        textAlign: TextAlign.right,
                      ),
                      8.vs,
                      RectangleShape.tap(
                        padding: getMarginOrPadding(
                          top: 13,
                          bottom: 7,
                          end: 17,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.white,
                        child: CustomTextWidget(
                          text: "24/5/2025",
                          style: getRegularTextStyle(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            18.vs,
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: [
                      CustomTextWidget(
                        text: "المبلغ - نوع الكيلو",
                        style: getRegularTextStyle(),
                      ),
                      8.vs,
                      RectangleShape.tap(
                        padding: getMarginOrPadding(
                          top: 13,
                          bottom: 7,
                          end: 17,
                        ),

                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.white,
                        child: CustomTextWidget(
                          textAlign: TextAlign.right,
                          text: "24/5/2025",
                          style: getRegularTextStyle(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                11.hs,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomTextWidget(
                        text: "المبلغ - نوع الكيلو",
                        style: getRegularTextStyle(),
                        textAlign: TextAlign.right,
                      ),
                      8.vs,
                      RectangleShape.tap(
                        padding: getMarginOrPadding(
                          top: 13,
                          bottom: 7,
                          end: 17,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.white,
                        child: CustomTextWidget(
                          text: "24/5/2025",
                          style: getRegularTextStyle(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            18.vs,
            CustomTextWidget(text: "موقع المكتب", style: getMediumTextStyle()),
            14.vs,
            RectangleShape.tap(
              borderRadius: BorderRadius.circular(12),
              padding: getMarginOrPadding(vertical: 11, horizontal: 130),
              color: AppColors.white300,
              child: Row(
                children: [
                  CustomTextWidget(
                    text: "الخريطه",
                    style: getRegularTextStyle(color: AppColors.grey),
                  ),
                  6.hs,
                  const CustomIcon(
                    icon: Icons.location_on,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ContainerOfCarDetails extends StatelessWidget {
  const ContainerOfCarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      // color: AppColors.grey800,
      borderRadius: BorderRadius.circular(12),
      padding: getMarginOrPadding(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RectangleShape.tap(
                borderRadius: BorderRadius.circular(8),
                padding: getMarginOrPadding(
                  top: 2,
                  bottom: 8,
                  start: 15,
                  end: 14,
                ),
                color: AppColors.grey,
                margin: getMarginOrPadding(top: 14, start: 16),
                child: CustomTextWidget(
                  text: "سدد الان",
                  style: getRegularTextStyle(color: AppColors.white),
                ),
              ),
              const Spacer(),
              CustomTextWidget(
                text: "تأجير سيارة كيا سيراتو ",
                style: getSemiboldTextStyle(),
              ),
            ],
          ),
          12.vs,
          CustomTextWidget(
            textAlign: TextAlign.right,
            text:
                "كيا سيراتو موديل 2018 - 200 كم مجاني يوميا يمكنك استئجارها الان ، تواصل معنا مباشرة .",
            style: getRegularTextStyle(color: AppColors.grey),
          ),
          20.vs,
          Row(
            children: [
              CustomTextWidget(text: " ازرق :", style: getMediumTextStyle()),
              CustomTextWidget(text: " اللون", style: getMediumTextStyle()),
              6.hs,
              CustomSvg.assets(asset: AppAssets().colorIcon),
              const Spacer(),
              CustomTextWidget(
                text: " الرياض",
                style: getMediumTextStyle(color: AppColors.primaryColor),
              ),
              6.hs,
              const CustomIcon(
                icon: Icons.location_on,
                color: AppColors.primaryColor,
              ),
            ],
          ),
          22.vs,
        ],
      ),
    );
  }
}
