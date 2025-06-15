import 'package:caro_user_app/config/themes/themes.dart';
import 'package:caro_user_app/features/orders/presentation/pages/finished_orders.dart';
import 'package:caro_user_app/features/orders/presentation/pages/my_orders_page.dart';
import 'package:caro_user_app/features/orders/presentation/pages/order_details_2.dart';
import 'package:caro_user_app/features/orders/presentation/pages/rate_order.dart';
import 'package:caro_user_app/features/search_for_me/presentation/pages/search_for_me.dart';
import 'package:caro_user_app/features/search_for_me/presentation/pages/search_for_me_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getAppTheme(context),
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: RouteGenerator.getRoute,

      // navigatorKey: navigatorKey,
      home: const SearchForMeDetails(),
    );
  }
}
