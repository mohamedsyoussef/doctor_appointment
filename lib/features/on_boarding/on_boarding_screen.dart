import 'package:doctor_appointment/core/helpers/extensions.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/widgets/custom_button.dart';
import 'package:doctor_appointment/features/on_boarding/widgets/doc_image_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/theming/text_styles.dart';
import 'widgets/doc_logo.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const DocLogo(),
                SizedBox(height: 30.h),
                const DoctorImage(),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Text(
                    'Manage and schedule all of your medical appointments easily with Health Hub to get a new experience.',
                    style: TextStyles.font14GreyWeight400,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20.h),
                CustomButton(
                  text: 'Get Started',
                  onPressed: () {
                    context.pushNamed(Routes.loginScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
