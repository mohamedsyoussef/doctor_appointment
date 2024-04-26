import 'package:doctor_appointment/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  final String content;
  const Subtitle({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyles.font14GreyWeight500,
    );
  }
}
