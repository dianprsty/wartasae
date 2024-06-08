import 'package:flutter/material.dart';

class AuthPageNaviate extends StatelessWidget {
  const AuthPageNaviate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        TextButton(
          style: const ButtonStyle(
              alignment: Alignment.center,
              enableFeedback: false,
              overlayColor: WidgetStateColor.transparent,
              padding: WidgetStatePropertyAll(EdgeInsets.zero)),
          onPressed: () {},
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.blue[800],
            ),
          ),
        ),
      ],
    );
  }
}
