import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/core/widgets/custom_list_view.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/core/widgets/shapes/rectangle_shape.dart';
import 'package:caro_user_app/features/orders/presentation/widget/order_details/details_of_order_details2.dart';
import 'package:caro_user_app/features/orders/presentation/widget/order_details/location_details_of_order_details2.dart';
import 'package:caro_user_app/features/orders/presentation/widget/order_details/order_details_card_of_order_details2.dart';
import 'package:caro_user_app/features/orders/presentation/widget/order_details/photo_of_order_details2.dart';

import '../../../../core/utils/app_list_constant.dart';
import 'my_orders_page.dart';

class OrderDetails2 extends StatelessWidget {
  const OrderDetails2({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.children(
      padding: getMarginOrPadding(horizontal: 19, top: 18),
      crossAxisAlignment: CrossAxisAlignment.end,
      title: "تفاصيل الطلب",
      isBack: true,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            AppListConstant.orderDetailStaticData.length,
            (index) => DetailsOfOrderDetails2(
              title: AppListConstant.orderDetailStaticData[index].title!,
              value: AppListConstant.orderDetailStaticData[index].status!,
            ),
          ),
        ),
        16.vs,
        CustomTextWidget(
          text: "التفاصيل",
          style: getMediumTextStyle(fontSize: 16),
        ),
        12.vs,
        const OrderDetailsCardOfOrderDetails2(),
        16.vs,
        CustomTextWidget(
          text: "عنوان الطلب",
          style: getMediumTextStyle(fontSize: 16),
        ),
        12.vs,
        const LocationDetailsOfOrderDetails2(),
        16.vs,
        CustomTextWidget(
          text: "صور الطلب",
          style: getMediumTextStyle(fontSize: 16),
        ),
        12.vs,
        const PhotoOfOrderDetails2(),
        58.vs,
        CustomElevatedButton.text(onPressed: () {
          Routes.rateOrder.moveTo;
        }, text: "تقييم طلبك"),
      ],
    );
  }
}
