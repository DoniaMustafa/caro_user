import 'package:caro_user_app/core/export/export.dart';
import 'package:country_code_picker/country_code_picker.dart';

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
      prefix: CountryCodePicker(
        onChanged: (country) {
          print(country.code);
          print(country.dialCode);
          print(country.flagUri);
        },
        initialSelection: 'SA',
        favorite: ['+966', 'SA'],
        showCountryOnly: false,
        // showOnlyCountryWhenClosed: false,
        alignLeft: false,
      ),
      suffixIcon: const CustomIcon(
        icon: Icons.phone_in_talk_rounded,
        color: AppColors.primaryColor,
      ),
      controller: phoneForm.controller,
      textInputAction: TextInputAction.next,
      onChanged: phoneForm.onChanged,
      onSaved: phoneForm.onSaved,
      validator: phoneForm.onValidate,
      textInputType: TextInputType.phone,
    );
  }
}
