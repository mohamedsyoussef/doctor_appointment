import 'package:doctor_appointment/core/theming/styles.dart';
import 'package:flutter/material.dart';

class MainTitles extends StatelessWidget {
  final String title;
  const MainTitles({super.key,  required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyles.font24BlueBold,
    );
  }
}
