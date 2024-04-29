import 'package:doctor_appointment/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class ConditionsAndPrivacyText extends StatelessWidget {
  const ConditionsAndPrivacyText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By logging, you agree to our ',
        style: TextStyles.font12GreyWeight400,
        children: [
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font12BlueBold,
          ),
          TextSpan(
            text: ' and ',
            style: TextStyles.font12GreyWeight400,
          ),
          TextSpan(
            text: 'Privacy Policy.',
            style: TextStyles.font12BlueBold,
          ),
        ],
      ),
    );
  }
}
