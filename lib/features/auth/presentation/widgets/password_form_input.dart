import 'package:flutter/material.dart';

class PasswordFormInput extends StatefulWidget {
  const PasswordFormInput({
    super.key,
    required this.passwordController,
    this.passwordValidator,
    required this.name,
  });
  final TextEditingController passwordController;
  final dynamic passwordValidator;
  final String name;

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
        hintText: widget.name,
        labelText: widget.name,
        focusColor: Colors.blue[900],
        prefixIcon: const Icon(Icons.lock_outline),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
          icon: _isPasswordVisible
              ? const Icon(Icons.visibility_outlined)
              : const Icon(Icons.visibility_off_outlined),
        ),
      ),
    );
  }
}
