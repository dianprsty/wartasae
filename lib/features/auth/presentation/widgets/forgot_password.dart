import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key, this.forgotPasswordCall});
  final dynamic forgotPasswordCall;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        alignment: Alignment.centerRight,
        enableFeedback: false,
        overlayColor: WidgetStateColor.transparent,
      ),
      onPressed: forgotPasswordCall,
      child: Text(
        "Forgot Password?",
        style: TextStyle(color: Colors.blue[800]),
        textAlign: TextAlign.end,
      ),
    );
  }
}
