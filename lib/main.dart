import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warta_sae/features/auth/presentation/pages/onboarding_page.dart';

void main() {
  runApp(const WartaSaeApp());
}

class WartaSaeApp extends StatelessWidget {
  const WartaSaeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warta Sae',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.latoTextTheme(),
        useMaterial3: true,
      ),
      home: const OnboardingPage(),
    );
  }
}
