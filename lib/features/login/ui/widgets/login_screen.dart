import 'package:doctor_appointment/core/widgets/main_title.dart';
import 'package:doctor_appointment/core/widgets/subtitles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const MainTitles(title: 'Welcome Back'),
                  SizedBox(height: 10.h),
                  const Subtitle(
                      content:
                          'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
