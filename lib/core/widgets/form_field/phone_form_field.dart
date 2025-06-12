import 'package:caro_user_app/core/utils/app_mixin.dart';
import 'package:flutter/material.dart';

import 'custom_text_form.dart';

class PhoneFormField extends StatefulWidget with BasedFormField {
  PhoneFormField({
    super.key,
    this.onChanged,
    this.onValidate,
    this.onSaved,
    required this.controller,
  });
  @override
  State<PhoneFormField> createState() => _PhoneFormFieldState();

  @override
  final ValueChanged<String?>? onChanged;
  @override
  final TextEditingController? controller;
  @override
  final ValueChanged<String?>? onSaved;
  @override
  final FormFieldValidator<String?>? onValidate;
}

class _PhoneFormFieldState extends State<PhoneFormField> {
  @override
  Widget build(BuildContext context) {
    final phoneForm = widget;

    return CustomTextFormField(
      controller: phoneForm.controller,
      textInputAction: TextInputAction.next,
      onChanged: phoneForm.onChanged,
      onSaved: phoneForm.onSaved,
      validator: phoneForm.onValidate,
      textInputType: TextInputType.phone,
    );
  }
}
