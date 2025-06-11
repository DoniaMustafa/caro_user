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
  });

  @override
  final ValueChanged<String?>? onChanged;
  @override
  final TextEditingController? controller;
  @override
  final ValueChanged<String?>? onSaved;
  @override
  final FormFieldValidator<String?>? onValidate;
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
    );
  }
}
