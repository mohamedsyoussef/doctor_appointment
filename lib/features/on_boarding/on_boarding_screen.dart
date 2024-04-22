import 'package:doctor_appointment/features/on_boarding/widgets/doc_image_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          child: Column(children: [
            const DocLogo(),
            SizedBox(height: 30.h),
            DoctorImage(),
          ]),
        ),
      ),
    );
  }
}
