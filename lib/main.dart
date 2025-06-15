import 'package:caro_user_app/caro_app.dart';
import 'package:caro_user_app/config/themes/themes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'config/routes/app_routes.dart';
import 'config/routes/app_routes_helper.dart';
import 'custom_easy_localization.dart';
import 'features/nav_bar/presentation/pages/nav_bar_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Bloc.observer = GlobalBlocObserver();
  await EasyLocalization.ensureInitialized();
  runApp(CustomEasyLocalization(child: const CaroApp()));
}
