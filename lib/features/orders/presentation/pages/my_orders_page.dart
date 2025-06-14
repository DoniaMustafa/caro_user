import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/core/widgets/shapes/rectangle_shape.dart';
import 'package:caro_user_app/features/orders/presentation/pages/active_order.dart';
import 'package:caro_user_app/features/orders/presentation/pages/finished_orders.dart';
import 'package:caro_user_app/features/orders/presentation/pages/order_details.dart';
import 'package:caro_user_app/features/orders/presentation/widget/offer_widget_my_orders.dart';
import 'package:caro_user_app/features/orders/presentation/widget/order_details_my_orders.dart';

import '../widget/order_info_details_of_my_orders.dart';

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

  int index = 2;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.children(
      isBack: true,
      title: "طلباتي",
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RectangleShape.tap(
                  isTap: true,
                  onTap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  borderRadius: BorderRadius.circular(12),
                  color: index == 0 ? AppColors.red300 : AppColors.white,
                  padding: getMarginOrPadding(vertical: 8, horizontal: 35),
                  child: CustomTextWidget(
                    text: "المنتهية",
                    style: getMediumTextStyle(
                      color: index == 0 ? AppColors.white : AppColors.red300,
                      fontSize: 16,
                    ),
                  ),
                ),
                RectangleShape.tap(
                  isTap: true,
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  borderRadius: BorderRadius.circular(12),
                  color: index == 1 ? AppColors.red300 : AppColors.white,
                  padding: getMarginOrPadding(vertical: 8, horizontal: 35),
                  child: CustomTextWidget(
                    text: "النشطة",
                    style: getMediumTextStyle(
                      color: index == 1 ? AppColors.white : AppColors.red300,
                      fontSize: 16,
                    ),
                  ),
                ),
                RectangleShape.tap(
                  isTap: true,
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  borderRadius: BorderRadius.circular(12),
                  color: index == 2 ? AppColors.red300 : AppColors.white,
                  padding: getMarginOrPadding(vertical: 8, horizontal: 35),
                  child: CustomTextWidget(
                    text: "طلباتي",
                    style: getMediumTextStyle(
                      color: index == 2 ? AppColors.white : AppColors.red300,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),

            18.vs,
            if (index == 2) ...[
              const MyOrdersViewPage(),
            ] else if (index == 1) ...[
              const ActiveOrder(),
            ] else if (index == 0) ...[
              const FinishedOrders(),
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
        const OrderDetailsMyOrders(isWaiting: false),
        14.vs,
        const OrderDetailsMyOrders(isWaiting: true),
        14.vs,
        const OfferWidgetMyOrders(),
      ],
    );
  }
}
