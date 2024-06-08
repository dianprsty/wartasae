import 'package:flutter/material.dart';

class CustomButtonStyle {
  static ButtonStyle outlined = const ButtonStyle(
    padding: WidgetStatePropertyAll(EdgeInsets.all(12)),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  );

  static ButtonStyle filled = const ButtonStyle(
    padding: WidgetStatePropertyAll(EdgeInsets.all(12)),
    backgroundColor: WidgetStatePropertyAll(Colors.deepPurpleAccent),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  );
}
