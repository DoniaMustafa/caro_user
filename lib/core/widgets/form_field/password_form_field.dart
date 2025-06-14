import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/core/utils/app_mixin.dart';
import 'package:flutter/material.dart';

import '../custom_icon.dart';
import 'custom_text_form.dart';

class PasswordFormField extends StatefulWidget with BasedFormField {
  PasswordFormField({
    super.key,
    this.onChanged,
    this.onValidate,
    this.onSaved,
    this.controller,
    this.suffixIcon,
    this.hintText,
    this.textDirection,
    this.hintTextDirection,
    this.isFill = false,
    this.border,
    this.hintStyle,
  });

  @override
  final ValueChanged<String?>? onChanged;
  @override
  final TextEditingController? controller;
  @override
  final ValueChanged<String?>? onSaved;
  @override
  final FormFieldValidator<String?>? onValidate;

  Widget? suffixIcon;
  String? hintText;
  TextDirection? textDirection;
  TextDirection? hintTextDirection;
  bool? isFill;
  InputBorder? border;
  TextStyle? hintStyle;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool isVisibility = false;
  @override
  Widget build(BuildContext context) {
    final passwordWidget = widget as BasedFormField;
    return CustomTextFormField(
      controller: passwordWidget.controller,
      textInputAction: TextInputAction.next,
      textInputType: TextInputType.visiblePassword,
      onChanged: passwordWidget.onChanged,
      onSaved: passwordWidget.onSaved,
      validator: passwordWidget.onValidate,
      isPassword: true,
      // suffix: CustomIcon(
      //   icon: isVisibility.isTrue ? Icons.visibility : Icons.visibility_off,
      //   color: Colors.grey,
      //   onTap: () {
      //     isVisibility = !isVisibility;
      //     setState(() {});
      //   },
      // ),
      // suffixIcon: widget.suffixIcon,
      hintText: widget.hintText,
      hintTextDirection: widget.hintTextDirection,
      textDirection: widget.textDirection,
      border: widget.border,
      isFill: widget.isFill!,
      hintStyle: widget.hintStyle,
    );
  }
}
