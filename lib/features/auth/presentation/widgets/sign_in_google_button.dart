import 'package:flutter/material.dart';
import 'package:warta_sae/core/constants/custom_button_style.dart';

class SignInGoogleButton extends StatelessWidget {
  const SignInGoogleButton(
      {super.key, this.onPressed, required this.textButton});
  final dynamic onPressed;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: CustomButtonStyle.outlined,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/google.png",
            height: 20,
          ),
          const SizedBox(width: 8),
          Text(
            textButton,
            style: const TextStyle(color: Colors.black87, fontSize: 14),
          )
        ],
      ),
    );
  }
}
