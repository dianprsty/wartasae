import 'package:flutter/material.dart';
import 'package:warta_sae/core/constants/custom_button_style.dart';
import 'package:warta_sae/core/constants/custom_text_style.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Flexible(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: MediaQuery.of(context).size.height / 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      "assets/images/onboarding.png",
                      width: double.infinity,
                    ),
                    Text(
                      "Welcome to Warta Sae",
                      style: CustomTextStyle.authTitle,
                    ),
                    Text(
                      "Get the latest news update from around the world!",
                      style: CustomTextStyle.authSubtitle,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 40) / 2,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: CustomButtonStyle.outlined,
                        child: const Flexible(
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 40) / 2,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: CustomButtonStyle.filled,
                        child: const Flexible(
                            child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
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
}
