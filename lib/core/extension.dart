import 'dart:convert';

import 'package:caro_user_app/core/utils/size_utils.dart';
import 'package:flutter/cupertino.dart';

extension StringExtensions on String {
  String get removeSpaces => replaceAll(' ', '');
  String get removeRangeSpaces => replaceRange(5, 8, '');
  int get codeFromString {
    String formattedStringColor = removeSpaces;
    if (formattedStringColor.startsWith('#')) {
      formattedStringColor = formattedStringColor.replaceAll('#', '');
    } else if (formattedStringColor.startsWith('0x')) {
      formattedStringColor = formattedStringColor.replaceAll('0x', '');
    } else if (formattedStringColor.startsWith('0X')) {
      formattedStringColor = formattedStringColor.replaceAll('0X', '');
    }
    formattedStringColor =
        formattedStringColor.isLengthEqual(6)
            ? formattedStringColor.addAtStart('FF')
            : formattedStringColor;
    return int.parse(formattedStringColor, radix: 16);
  }

  Color get colorFromString {
    String formattedStringColor = removeSpaces.toUpperCase();
    if (formattedStringColor.startsWith('#')) {
      formattedStringColor = formattedStringColor.replaceAll('#', '');
    } else if (formattedStringColor.startsWith('0x')) {
      formattedStringColor = formattedStringColor.replaceAll('0x', '');
    } else if (formattedStringColor.startsWith('0X')) {
      formattedStringColor = formattedStringColor.replaceAll('0X', '');
    }
    formattedStringColor =
        formattedStringColor.isLengthEqual(6)
            ? formattedStringColor.addAtStart('FF')
            : formattedStringColor;
    return Color(int.parse(formattedStringColor, radix: 16));
  }

  dynamic get fromStringToJson => jsonDecode(this);
  String get capitalize => toUpperCase();

  String addAtStart(String start) => "$start$this";
  bool isLengthEqual(int length) => this.length == length;
  int get toInt => int.parse(this);
  bool get isEmptyOrNull => (isEmpty) || (this == 'null');

  // bool get validateOtp {
  //   if (isNullOrEmpty || length < AppConstants.otpLength) {
  //     return false;
  //   }
  //   return true;
  // }

  String? get validatePassword {
    if (isEmpty || trim().isEmpty || length < 6) {
      return 'AppStrings().passwordError';
    }
    return null;
  }

  isEqualTo(value) => this == value;
  isNotEqualTo(value) => this != value;
}

extension CutomMethodsOnNullObject on Object? {
  String get fromJsonToString => jsonEncode(this);
  bool get isNull => this == null;
  bool get isNotNull => this != null;
  bool get isNotNullAndIsFalse => this != null && this == false;
  bool get isNotNullAndIsTrue => this != null && this == true;
  bool get isNullOrIsFalse => this == null || this == true;
  bool get isNotNullOrFalse => this != null || this != true;

  bool get isTrue => this == true;
  bool get isFalse => this == false;
  Widget isNotNullGetWidget(Widget widget) =>
      isNotNull ? widget : const SizedBox.shrink();
}

extension StringNullExtension on String? {
  String get validate => this == null ? '' : this!;
  int get toInt => validate.isEmpty ? 0 : int.parse(this!);
  double get toDouble => validate.isEmpty ? 0.0 : double.parse(this!);
  bool get isNotNull => this != null;
  bool get isNull => this == null;
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
  bool get validateNetworkAsset {
    if (isNotNull && (this!.contains("http") || this!.contains("https"))) {
      return true;
    }
    return false;
  }

  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

extension IntNullExtension on int? {
  int get validate => this ?? 0;

  SizedBox get vs => SizedBox(height: getVerticalSize(validate.toDouble()));
  SizedBox get hs => SizedBox(width: getHorizontalSize(validate.toDouble()));

  bool isSuccessful() => validate >= 200 && validate <= 206;
  double get h => getVerticalSize(validate.toDouble());
  double get w => getHorizontalSize(validate.toDouble());
  double get r => getVerticalSize(validate.toDouble());
}

extension DynamicExtension on dynamic {
  Map<String, dynamic> get json => jsonDecode(this);
  isEqualTo(value) => this == value;
  isNotEqualTo(value) => this != value;
}

//
extension MediaQueryValues on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get topPadding => MediaQuery.of(this).viewPadding.top;
  double get bottom => MediaQuery.of(this).viewInsets.bottom;
}

extension DoubleExtensions on double {
  double get h => getVerticalSize(this);
  double get w => getHorizontalSize(this);
  double get r => getVerticalSize(this);

  SizedBox get vs => SizedBox(height: h);
  SizedBox get hs => SizedBox(width: w);
}
