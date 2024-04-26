import 'package:doctor_appointment/core/widgets/add_text_form_field.dart';
import 'package:doctor_appointment/core/widgets/main_title.dart';
import 'package:doctor_appointment/core/widgets/subtitles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MainTitles(title: 'Welcome Back'),
              SizedBox(height: 8.h),
              const Subtitle(
                  content:
                      'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.'),
              SizedBox(height: 40.h),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AddTextFormField(
                        labelText: 'Email',
                        suffixIcon: Icon(Icons.email),
                        hintText: 'Enter Your E-mail',
                      ),
                      SizedBox(height: 20.h),
                      AddTextFormField(
                        labelText: 'Password',
                        isObscureText: isObsecureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObsecureText = !isObsecureText;
                            });
                          },
                          child: Icon(isObsecureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        hintText: 'Enter Your Password',
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
