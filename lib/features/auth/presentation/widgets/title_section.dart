import 'package:flutter/material.dart';
import 'package:warta_sae/core/constants/custom_text_style.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Lets Sign you in",
          style: CustomTextStyle.authTitle,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          "Welcome Back, You Have Been Missed",
          style: CustomTextStyle.authSubtitle,
        ),
      ],
    );
  }
}
