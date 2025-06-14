import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/size_utils.dart';
import '../constants.dart';

ThemeData getAppTheme(BuildContext context) => ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.white,
          primary: AppColors.primaryColor,
          onPrimary: Colors.white,
          background: AppColors.white),
      cardColor: Colors.transparent,
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.white,
        // systemOverlayStyle: SystemUiOverlayStyle(
        //     statusBarColor: AppColors.white,
        //     statusBarBrightness: Brightness.light)
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.primaryColor,
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
ThemeData getDarkAppTheme(BuildContext context) => ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.grey,
          primary: AppColors.white,
          onPrimary: AppColors.white,
          background: AppColors.grey),
      cardColor: Colors.transparent,
      scaffoldBackgroundColor: AppColors.grey,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.white,
        // systemOverlayStyle: SystemUiOverlayStyle(
        //     statusBarColor: AppColors.white,
        //     statusBarBrightness: Brightness.light)
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: AppColors.grey,
          unselectedItemColor: AppColors.grey,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.grey,
          selectedIconTheme: IconThemeData(
            color: AppColors.white,
          )),
      /**************************** TextFiled form field *************************/
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: getMarginOrPadding(start: 16, end: 16),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white),
          borderRadius:
              BorderRadius.all(Radius.circular(AppConstants.circleRadius)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AppConstants.circleRadius)),
          borderSide: BorderSide(
              color: AppColors.white
                      ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AppConstants.circleRadius)),
          borderSide: BorderSide(color: AppColors.white),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AppConstants.circleRadius)),
          borderSide: BorderSide.none,
        ),
      ),
    );
