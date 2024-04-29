import 'package:doctor_appointment/core/theming/color_manager.dart';
import 'package:doctor_appointment/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        Gap(2.h),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        Gap(2.h),
        buildValidationRow(
            'At least 1 special character', hasSpecialCharacters),
        Gap(2.h),
        buildValidationRow('At least 1 number', hasNumber),
        Gap(2.h),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorManager.mainGrey,
        ),
        Gap(6.w),
        Text(
          text,
          style: TextStyles.font12BlueBold.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? Colors.grey : ColorManager.mainGrey,
          ),
        )
      ],
    );
  }
}
