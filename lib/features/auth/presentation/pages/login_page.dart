import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

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
                Text(
                  "Lets Sign you in",
                  style: titleStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Welcome Back,",
                  style: titleDescStyle,
                ),
                Text(
                  "You Have Been Missed",
                  style: titleDescStyle,
                ),
                const SizedBox(
                  height: 32,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        validator: validateEmail,
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          hintText: "Email",
                          labelText: "Email",
                          focusColor: Colors.blue[900],
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        obscureText: true,
                        validator: validatePassword,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          hintText: "Password",
                          labelText: "Password",
                          focusColor: Colors.blue[900],
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextButton(
                        style: const ButtonStyle(
                          alignment: Alignment.centerRight,
                          enableFeedback: false,
                          overlayColor: WidgetStateColor.transparent,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.blue[800]),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: onFormSubmit,
                        style: const ButtonStyle(
                          padding: WidgetStatePropertyAll(EdgeInsets.all(12)),
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.deepPurpleAccent),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[500] as Color),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.only(start: 8, end: 8),
                      child: Text("or"),
                    ),
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[500] as Color),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 24),
                OutlinedButton(
                  onPressed: () {
                    //
                  },
                  style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(EdgeInsets.all(12)),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/google.png",
                        height: 20,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Sign in with Google",
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Row(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle titleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 36,
    color: Colors.blue[900],
  );

  TextStyle titleDescStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: Colors.grey[700],
  );
}
