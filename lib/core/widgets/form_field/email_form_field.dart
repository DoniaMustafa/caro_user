import 'package:flutter/material.dart';

import '../../utils/app_mixin.dart';
import 'custom_text_form.dart';

class EmailFormField extends StatefulWidget with BasedFormField {
  EmailFormField({
    super.key,
    this.onChanged,
    this.onValidate,
    this.onSaved,
    required this.controller,
    required this.suffixIcon,
    required this.hintText,
    this.textDirection,
    this.hintTextDirection,
    required this.isFill,
    required this.border,
    required this.hintStyle,
  });

  @override
  final ValueChanged<String?>? onChanged;
  @override
  final TextEditingController? controller;
  @override
  final ValueChanged<String?>? onSaved;
  @override
  final FormFieldValidator<String?>? onValidate;

  final Widget? suffixIcon;
  final String hintText;
  final TextDirection? textDirection;
  final TextDirection? hintTextDirection;
  final bool isFill;
  final InputBorder border;
  final TextStyle hintStyle;

  @override
  State<EmailFormField> createState() => _EmailFormFieldState();
}

class _EmailFormFieldState extends State<EmailFormField> {
  @override
  Widget build(BuildContext context) {
    final emailWidget = widget as BasedFormField;
    return CustomTextFormField(
      controller: emailWidget.controller,
      textInputAction: TextInputAction.next,
      textInputType: TextInputType.emailAddress,
      onChanged: emailWidget.onChanged,
      onSaved: emailWidget.onSaved,
      validator: emailWidget.onValidate,
      suffixIcon: widget.suffixIcon,
      hintText: widget.hintText,
      hintTextDirection: widget.hintTextDirection,
      textDirection: widget.textDirection,
      border: widget.border,
      isFill: widget.isFill,
      hintStyle: widget.hintStyle,
    );
  }
}
