import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warta_sae/core/config/routes/routes.dart';
import 'package:warta_sae/features/auth/presentation/pages/onboarding_page.dart';

void main() {
  runApp(const WartaSaeApp());
}

class WartaSaeApp extends StatelessWidget {
  const WartaSaeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warta Sae',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.latoTextTheme(),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRoutes.onGenerateRoutes,
      home: const OnboardingPage(),
    );
  }
}
