import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:warta_sae/features/auth/presentation/widgets/auth_page_naviate.dart';
import 'package:warta_sae/features/auth/presentation/widgets/email_form_input.dart';
import 'package:warta_sae/features/auth/presentation/widgets/forgot_password.dart';
import 'package:warta_sae/features/auth/presentation/widgets/or_separator.dart';
import 'package:warta_sae/features/auth/presentation/widgets/password_form_input.dart';
import 'package:warta_sae/features/auth/presentation/widgets/sign_in_button.dart';
import 'package:warta_sae/features/auth/presentation/widgets/sign_in_google_button.dart';
import 'package:warta_sae/features/auth/presentation/widgets/title_section.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? validateEmail(value) {
    if (value == null || value.isEmpty) {
      return "Email can't be empty";
    }

    if (!EmailValidator.validate(value)) {
      return "Email format is not valid";
    }

    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password can't be empty";
    }

    if (value.length < 6) {
      return "Password length should be at leart 6 character";
    }

    return null;
  }

  void onFormSubmit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    var snackBar = const SnackBar(
      content: Text("Login Success"),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 32,
                ),
                const TitleSection(),
                const SizedBox(
                  height: 32,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      EmailFormInput(
                        controller: _emailController,
                        emailValidator: validateEmail,
                      ),
                      const SizedBox(height: 16),
                      PasswordFormInput(
                        passwordController: _passwordController,
                        passwordValidator: validatePassword,
                      ),
                      const SizedBox(height: 8),
                      ForgotPassword(
                        forgotPasswordCall: () {
                          var snackBar = const SnackBar(
                            content: Text("Forgot Password"),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      ),
                      const SizedBox(height: 16),
                      SignInButton(
                        onPressed: onFormSubmit,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const OrSeparator(),
                const SizedBox(height: 24),
                SignInGoogleButton(
                  onPressed: () {},
                ),
                const SizedBox(height: 32),
                const AuthPageNaviate()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
