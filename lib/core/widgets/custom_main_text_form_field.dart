import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/theming/colors_manager.dart';
import 'package:monglish_app/core/theming/styles.dart';

class CustomMainTextFormFiels extends StatelessWidget {
  const CustomMainTextFormFiels({
    super.key,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    required this.labelText,
    this.labelStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.isObscureText,
    this.style,
    this.fillColor,
    this.controller,
    required this.validator,
    this.focusNode,
    this.nextFocusNode,
  });

  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final String labelText;
  final TextStyle? labelStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? isObscureText;
  final TextStyle? style;
  final Color? fillColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              vertical: 17.h,
              horizontal: 20.w,
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(
                color: ColorsManager.enabledTextFieldColor,
                width: 1.3,
              ),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3,
              ),
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(
                color: ColorsManager.errorTextFieldColor,
                width: 1.3,
              ),
            ),
        focusedErrorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(
                color: ColorsManager.errorTextFieldColor,
                width: 1.3,
              ),
            ),
        labelText: labelText,
        labelStyle: labelStyle ?? Styles.enabledTextFieldsLabelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: fillColor ?? ColorsManager.textFieldFillColor,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: style ?? Styles.focusedTextFieldsLabelText,
      validator: (value) {
        return validator(value);
      },
      focusNode: focusNode,
      onFieldSubmitted: (value) {
        if (nextFocusNode != null) {
          nextFocusNode!.requestFocus();
        }
      },
    );
  }
}
