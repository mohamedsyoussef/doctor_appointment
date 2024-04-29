import 'package:doctor_appointment/core/widgets/custom_button.dart';
import 'package:doctor_appointment/core/widgets/main_title.dart';
import 'package:doctor_appointment/core/widgets/subtitles.dart';
import 'package:doctor_appointment/features/login/data/models/login_request_body.dart';
import 'package:doctor_appointment/features/login/ui/widgets/conditions_privacy_text.dart';
import 'package:doctor_appointment/features/login/ui/widgets/email_password.dart';
import 'package:doctor_appointment/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../core/theming/text_styles.dart';
import '../logic/cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MainTitles(title: 'Welcome Back'),
                Gap(8.h),
                const Subtitle(
                    content:
                        'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.'),
                Gap(40.h),
                Column(
                  children: [
                    const EmailAndPasswrod(),
                    Gap(20.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('Forgot Password?',
                            style: TextStyles.font12BlueBold),
                      ),
                    ),
                    Gap(20.h),
                    CustomButton(
                      text: 'Login',
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    Gap(30.h),
                    const ConditionsAndPrivacyText(),
                  ],
                ),
                Gap(40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account yet?",
                        style: TextStyles.font12GreyWeight400),
                    GestureDetector(
                      onTap: () {},
                      child: Text(' Sign Up', style: TextStyles.font12BlueBold),
                    )
                  ],
                ),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
            email: context.read<LoginCubit>().emailController.text,
            password: context.read<LoginCubit>().passwordController.text,
          ));
    }
  }
}
