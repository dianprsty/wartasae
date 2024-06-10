import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:warta_sae/features/auth/presentation/widgets/auth_page_navigate.dart';
import 'package:warta_sae/features/auth/presentation/widgets/text_form_input.dart';
import 'package:warta_sae/features/auth/presentation/widgets/forgot_password.dart';
import 'package:warta_sae/features/auth/presentation/widgets/or_separator.dart';
import 'package:warta_sae/features/auth/presentation/widgets/password_form_input.dart';
import 'package:warta_sae/features/auth/presentation/widgets/sign_in_button.dart';
import 'package:warta_sae/features/auth/presentation/widgets/sign_in_google_button.dart';
import 'package:warta_sae/features/auth/presentation/widgets/title_section.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController =
      TextEditingController();
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
                const TitleSection(
                  title: "Lets Create an Account",
                  subtitle: "Start your great journey here!",
                ),
                const SizedBox(
                  height: 32,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormInput(
                        controller: _emailController,
                        validator: validateEmail,
                        name: "Full Name",
                        icon: const Icon(Icons.person_2_outlined),
                      ),
                      const SizedBox(height: 16),
                      TextFormInput(
                        controller: _emailController,
                        validator: validateEmail,
                        name: "Email",
                        icon: const Icon(Icons.mail_outline),
                      ),
                      const SizedBox(height: 16),
                      PasswordFormInput(
                        passwordController: _passwordController,
                        passwordValidator: validatePassword,
                        name: "Password",
                      ),
                      const SizedBox(height: 16),
                      PasswordFormInput(
                        passwordController: _passwordConfirmationController,
                        passwordValidator: validatePassword,
                        name: "Password Confirmation",
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
                        textButton: "Sign Up",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const OrSeparator(),
                const SizedBox(height: 24),
                SignInGoogleButton(
                  onPressed: () {},
                  textButton: "Sign Up with Google",
                ),
                const SizedBox(height: 32),
                const AuthPageNavgiate(
                  text: "Already have an account?",
                  linkText: "Sign In",
                  routeName: "/login",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
