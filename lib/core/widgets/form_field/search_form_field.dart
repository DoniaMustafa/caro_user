import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/utils/app_fonts.dart';

class SearchFormField extends StatelessWidget with BasedFormField {
  SearchFormField({
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
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller:controller,
      textInputAction: TextInputAction.next,
      textInputType: TextInputType.text,
      onChanged: onChanged,
      onSaved:onSaved,
      validator:onValidate,
      hintText: 'ابحث في كارو',
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: 27.borderRadius,
      ),
      hintStyle: getRegularTextStyle(
        fontFamily: FontFamilies.cairoFamily,
        color: AppColors.grey600,
      ),
      prefix: CustomIcon(
        icon: Icons.search,
        size: iconSize(16 * 1.2, 16 * 1.2),
        color: AppColors.grey600,
      ),
    );
  }
}
