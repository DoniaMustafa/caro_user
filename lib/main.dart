import 'package:caro_user_app/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

import 'config/routes/app_routes.dart';
import 'config/routes/app_routes_helper.dart';
import 'features/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      // theme: ,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,navigatorKey: navigatorKey,
      // home: OnboardingPage(),
    );
  }
}
