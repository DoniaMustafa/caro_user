import 'package:caro_user_app/core/utils/app_colors.dart';
import 'package:caro_user_app/core/utils/app_fonts.dart';
import 'package:caro_user_app/core/utils/app_style.dart';
import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../custom_network_image.dart';

class CustomTextFormField extends StatefulWidget {
  final String? label;
  final TextEditingController? controller;
  // final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FormFieldValidator<String>? validator;
  final String? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLength;

  final String? hintText;
  final TextInputType? textInputType;
  final void Function(String?)? onSaved;
  final EdgeInsetsDirectional? contentPadding;
  final int? maxLines;
  final TextStyle? textStyle;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final bool isPassword;
  final bool isFill;
  final FocusNode? focusNode;
  final TextDirection? textDirection;
  final TextDirection? hintTextDirection;
  final TextAlign textAlign;
  final void Function()? onEditingComplete;
  final Function()? onTap;
  // Future<String>

  final bool enabled;
  final bool? isCirclePrefixIcon;
  final int? minLines;
  final EdgeInsetsGeometry? padding;
  final List<BoxShadow>? boxShadow;
  final Color? backColor;
  final double? r;
  final VoidCallback? suffixOnTap;
  final Color backGroundColor;
  final void Function(String)? onChanged;
  final TextStyle? hintStyle;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final double? height;
  final double? width;
  final Widget? prefix;
  final bool showError;
  CustomTextFormField({
    Key? key,
    this.controller,
    this.backGroundColor = Colors.white,
    this.focusNode,
    this.prefix,
    this.showError = false,
    this.isFill = false,
    this.padding,
    this.backColor,
    // this.keyboardType =
    this.textInputAction = TextInputAction.next,
    this.hintText,
    this.validator,
    this.textAlign = TextAlign.start,
    this.onSaved,
    this.prefixIcon,
    this.textDirection,
    this.boxShadow,
    this.isPassword = false,
    this.label,
    this.height,
    this.maxLength,
    this.width,
    this.maxLines,
    this.isCirclePrefixIcon = false,
    this.border,
    this.enabledBorder,
    this.textInputType = TextInputType.text,
    this.contentPadding,
    this.textStyle,
    this.hintStyle,
    this.minLines,
    this.suffix,
    this.suffixConstraints,
    this.onEditingComplete,
    this.onTap,
    this.onChanged,
    this.enabled = true,
    this.suffixIcon,
    this.suffixOnTap,
    this.r,
    this.hintTextDirection,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    print("build custom aga9j");
    return Container(
      margin: widget.padding,
      decoration: BoxDecoration(
        boxShadow: widget.boxShadow.isNotNull ? widget.boxShadow : null,
      ),
      child: TextFormField(
        textDirection: widget.textDirection,
        style:
            widget.textStyle ??
            getRegularTextStyle(
              color:
                  // widget.isFill.isTrue
                  //     ? AppService().getBlocData<HomeOperationCubit>().isDark.isTrue
                  //     ? AppColors.white
                  //     : AppColors.black
                  //     : AppService().getBlocData<HomeOperationCubit>().isDark.isTrue
                  //     ? AppColors.white
                  //     :
                  AppColors.black,
              fontFamily: FontFamilies.sansArabicFamily,
              fontSize: 14,
            ),
        controller: widget.controller,
        focusNode: widget.focusNode,
        maxLines: widget.isPassword ? 1 : widget.maxLines,
        keyboardType:
            widget.isPassword
                ? TextInputType.visiblePassword
                : widget.textInputType,
        textInputAction: widget.textInputAction,
        minLines: widget.minLines,
        obscureText: widget.isPassword && hidePassword.isTrue,
        cursorColor: AppColors.black,
        cursorWidth: 2,
        maxLength: widget.maxLength,
        obscuringCharacter: "*",
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        onTap: () async {
          //  String? value = await          widget.onTap?.call();
        },
        enabled: widget.enabled,
        // textDirection: context.read<LanguageCubit>().isEn
        //     ? TextDirection.ltr
        //     : TextDirection.rtl,
        onChanged: (String value) {
          widget.onChanged?.call(value);
        },
        decoration: InputDecoration(
          hintTextDirection: widget.hintTextDirection,
          filled: widget.isFill,
          fillColor: AppColors.white,
          // widget.isFill.isTrue
          //     ? AppService().getBlocData<HomeOperationCubit>().isDark.isTrue
          //     ? AppColors.darkPurple
          //     :
          //     : null,
          enabledBorder: widget.enabledBorder,
          focusedBorder: widget.enabledBorder,
          contentPadding: widget.contentPadding,
          labelText: widget.label,
          labelStyle: getRegularTextStyle(
            fontSize: 16,
            color:
                // AppService().getBlocData<HomeOperationCubit>().isDark.isTrue
                //     ? widget.isFill.isTrue
                //     ? AppColors.black.withOpacity(0.67)
                //     :
                AppColors.white,
          ),
          // : AppColors.black.withOpacity(0.67)),
          prefixIcon: widget.prefix.isNotNull ? widget.prefix : null,
          suffix: widget.suffix,
          hintText: widget.hintText,
          // hintFadeDuration: 20.milliseconds,
          border: widget.border,
          suffixIconConstraints: widget.suffixConstraints,
          hintStyle:
              widget.hintStyle ??
              getRegularTextStyle(
                color:
                    // AppService()
                    //     .getBlocData<HomeOperationCubit>()
                    //     .isDark
                    //     .isTrue
                    //     ? AppColors.white
                    //     :
                    AppColors.black,
                fontFamily: FontFamilies.sansArabicFamily,
                fontSize: 14,
              ),
          suffixIcon:
              widget.isPassword ? buildSuffixPassword : widget.suffixIcon,
          // prefixIcon: widget.prefixIcon.isNotNull
          //     ? Padding(
          //   padding: getPadding(horizontal: 15, vertical: 10),
          //   child: CustomSvg(
          //     asset: widget.prefixIcon!,
          //     // matchTextDirection: true,
          //   ),
          // )
          //     : null
        ),
        validator: widget.validator,
        onSaved: widget.onSaved,
        onEditingComplete: widget.onEditingComplete,
      ),
    );
  }

  get buildSuffixPassword => GestureDetector(
    onTap: () {
      setState(() {
        hidePassword = !hidePassword;
      });
    },
    behavior: HitTestBehavior.translucent,
    child:
        hidePassword
            ? const Icon(Icons.visibility, color: AppColors.primaryColor)
            : const Icon(Icons.visibility_off, color: AppColors.grey),
  );
}
