import 'package:flutter/material.dart';

import 'my_orders_page.dart';

class ActiveOrder extends StatelessWidget {
  const ActiveOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [CustomOrderWidget(isWaiting: false)]);
  }
}
