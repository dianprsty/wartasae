import 'package:flutter/material.dart';
import 'package:warta_sae/core/constants/custom_button_style.dart';

class SignInButton extends StatelessWidget {
  const SignInButton(
      {super.key, required this.onPressed, required this.textButton});
  final Function() onPressed;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: CustomButtonStyle.filled,
      child: Text(
        textButton,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
