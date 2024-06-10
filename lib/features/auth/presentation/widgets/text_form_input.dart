import 'package:flutter/material.dart';

class TextFormInput extends StatefulWidget {
  const TextFormInput(
      {super.key,
      required this.controller,
      this.validator,
      required this.name,
      required this.icon});
  final TextEditingController controller;
  final dynamic validator;
  final String name;
  final Icon icon;

  @override
  State<TextFormInput> createState() => _TextFormInputState();
}

class _TextFormInputState extends State<TextFormInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: widget.name,
        labelText: widget.name,
        focusColor: Colors.blue[900],
        prefixIcon: widget.icon,
      ),
    );
  }
}
