import 'package:flutter/material.dart';
import 'package:warta_sae/core/constants/custom_text_style.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: CustomTextStyle.authTitle,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          subtitle,
          style: CustomTextStyle.authSubtitle,
        ),
      ],
    );
  }
}
