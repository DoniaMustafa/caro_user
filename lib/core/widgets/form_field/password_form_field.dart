import 'package:caro_user_app/core/utils/app_mixin.dart';
import 'package:flutter/material.dart';

import 'custom_text_form.dart';

class PasswordFormField extends StatefulWidget with BasedFormField {
  PasswordFormField({
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
    );
  }
}
