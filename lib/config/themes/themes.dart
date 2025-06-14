import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/size_utils.dart';
import '../constants.dart';

ThemeData getAppTheme(BuildContext context) => ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.white200,
          primary: AppColors.primaryColor,
          onPrimary: AppColors.white200,
          background: AppColors.white200),
      cardColor: AppColors.transparent,
      scaffoldBackgroundColor: AppColors.white200,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.white200,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.white,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedIconTheme: IconThemeData(
            color: AppColors.white,
          )),
      /**************************** TextFiled form field *************************/
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: getMarginOrPadding(start: 16, end: 16),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey),
          borderRadius:
              BorderRadius.all(Radius.circular(AppConstants.circleRadius)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AppConstants.circleRadius)),
          borderSide: BorderSide(color: AppColors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AppConstants.circleRadius)),
          borderSide: BorderSide(color: AppColors.grey),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AppConstants.circleRadius)),
          borderSide: BorderSide.none,
        ),
      ),
    );
