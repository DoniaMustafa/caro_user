import 'package:caro_user_app/features/orders/presentation/widget/order_details_my_orders.dart';
import 'package:flutter/material.dart';

import 'my_orders_page.dart';

class ActiveOrder extends StatelessWidget {
  const ActiveOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [OrderDetailsMyOrders(isWaiting: false)]);
  }
}
