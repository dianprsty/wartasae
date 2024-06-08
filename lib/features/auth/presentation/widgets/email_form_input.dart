import 'package:flutter/material.dart';

class EmailFormInput extends StatefulWidget {
  const EmailFormInput(
      {super.key, required this.controller, this.emailValidator});
  final TextEditingController controller;
  final dynamic emailValidator;

  @override
  State<EmailFormInput> createState() => _EmailFormInputState();
}

class _EmailFormInputState extends State<EmailFormInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.emailValidator,
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: "Email",
        // labelText: "Email",
        focusColor: Colors.blue[900],
        prefixIcon: const Icon(Icons.mail),
      ),
    );
  }
}
