import 'package:caro_user_app/config/localization_constants.dart';
import 'package:caro_user_app/config/themes/themes.dart';
import 'package:flutter/material.dart';

import 'config/routes/app_routes.dart';
import 'config/routes/app_routes_helper.dart';

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
      onGenerateRoute: RouteGenerator.getRoute,

      navigatorKey: navigatorKey,
      // home: OnboardingPage(),
    );
  }
}
