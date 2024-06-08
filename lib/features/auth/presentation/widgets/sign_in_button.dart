import 'package:flutter/material.dart';
import 'package:warta_sae/core/constants/custom_button_style.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key, required this.onPressed});
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: CustomButtonStyle.filled,
      child: const Text(
        "Sign in",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
