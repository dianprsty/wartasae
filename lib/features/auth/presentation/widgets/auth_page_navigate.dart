import 'package:flutter/material.dart';

class AuthPageNavgiate extends StatelessWidget {
  const AuthPageNavgiate({
    super.key,
    required this.text,
    required this.linkText,
    required this.routeName,
  });
  final String text;
  final String linkText;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        TextButton(
          style: const ButtonStyle(
              alignment: Alignment.center,
              enableFeedback: false,
              overlayColor: WidgetStateColor.transparent,
              padding: WidgetStatePropertyAll(EdgeInsets.zero)),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              routeName,
              (route) => route.isCurrent,
            );
          },
          child: Text(
            linkText,
            style: TextStyle(
              color: Colors.blue[800],
            ),
          ),
        ),
      ],
    );
  }
}
