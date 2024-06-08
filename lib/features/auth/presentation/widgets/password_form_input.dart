import 'package:flutter/material.dart';

class PasswordFormInput extends StatefulWidget {
  const PasswordFormInput(
      {super.key, required this.passwordController, this.passwordValidator});
  final TextEditingController passwordController;
  final dynamic passwordValidator;

  @override
  State<PasswordFormInput> createState() => _PasswordFormInputState();
}

class _PasswordFormInputState extends State<PasswordFormInput> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !_isPasswordVisible,
      validator: widget.passwordValidator,
      controller: widget.passwordController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: "Password",
        // labelText: "Password",
        focusColor: Colors.blue[900],
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
          icon: _isPasswordVisible
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
        ),
      ),
    );
  }
}
