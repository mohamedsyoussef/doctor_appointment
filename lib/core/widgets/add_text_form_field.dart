import 'package:doctor_appointment/core/theming/colors.dart';
import 'package:doctor_appointment/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? inputTextStyle;
  final bool? obscureText;
  final TextStyle? hintStyle;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  const AddTextFormField({
    super.key,
    required this.labelText,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.inputTextStyle,
    this.obscureText,
    this.hintStyle,
    required this.suffixIcon,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
                width: 1.5.w,
              ),
            ),
        hintStyle: hintStyle ?? TextStyles.font14GreyWeight500,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText ?? false,
      style: TextStyles.font14DarkBlueWeight500,
    );
  }
}
