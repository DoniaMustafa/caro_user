import 'package:flutter/material.dart';

mixin BasedFormField {
  ValueChanged<String?>? get onChanged => null;
  TextEditingController? get controller;
  ValueChanged<String?>? get onSaved;
  FormFieldValidator<String?>? get onValidate;
}
mixin ShapeMixin {
  double? get width;
  double? get height;
  Widget? get child;
  AlignmentGeometry? get alignment;
  Color? get color;
  EdgeInsetsGeometry? get padding;
  EdgeInsetsGeometry? get margin;
  BorderRadiusGeometry? get borderRadius;
  BoxBorder? get border;
  BoxShape? get shape;
  List<BoxShadow>? get boxShadow;
}
mixin BaseButton {
   String? get text;
   VoidCallback? get  onPressed;
  // double? get width;
  // double? get height;
  // Widget? get child;
  // Color? get color;
  // EdgeInsetsGeometry? get padding;
  // EdgeInsetsGeometry? get margin;
  // BorderRadiusGeometry? get borderRadius;
  // BoxBorder? get border;
  // BoxShape? get shape;
  // List<BoxShadow>? get boxShadow;
}