import 'package:doctor_appointment/core/theming/color_manager.dart';
import 'package:doctor_appointment/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? inputTextStyle;
  final bool? isObscureText;
  final TextStyle? hintStyle;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final Color? cursorColor;
  final Color? suffixIconColor;
  final Color? fillColor;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  const AddTextFormField({
    super.key,
    required this.labelText,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.inputTextStyle,
    this.isObscureText,
    this.hintStyle,
    required this.suffixIcon,
    required this.hintText,
    this.cursorColor,
    this.suffixIconColor,
    this.fillColor,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: cursorColor ?? ColorManager.mainBlue,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
                  BorderSide(color: ColorManager.borderGrey, width: 2.w),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorManager.mainBlue,
                width: 1.2.w,
              ),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.2.w,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.2.w,
          ),
        ),
        hintStyle: hintStyle ?? TextStyles.font14GreyWeight500,
        hintText: hintText,
        suffixIcon: suffixIcon,
        suffixIconColor: ColorManager.mainBlue,
        fillColor: fillColor ?? ColorManager.formFillCollor,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueWeight500,
      validator: (value) {
        return validator!(value!);
      },
    );
  }
}
