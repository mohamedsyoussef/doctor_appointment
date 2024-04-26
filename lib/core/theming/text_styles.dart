import 'package:doctor_appointment/core/theming/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackWeight700 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: const Color(0XFF242424),
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorManager.mainBlue,
  );
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorManager.mainBlue,
  );

  static TextStyle font14GreyWeight400 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: ColorManager.mainGrey,
  );
  static TextStyle font14GreyWeight500 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ColorManager.hintText,
  );
  static TextStyle font14DarkBlueWeight500 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ColorManager.inputText,
  );
}
