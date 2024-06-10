import 'package:flutter/material.dart';
import 'package:warta_sae/features/auth/presentation/pages/login_page.dart';
import 'package:warta_sae/features/auth/presentation/pages/onboarding_page.dart';
import 'package:warta_sae/features/auth/presentation/pages/register_page.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _materialRoute(const OnboardingPage());
      case "/login":
        return _materialRoute(const LoginPage());
      case "/register":
        return _materialRoute(const RegisterPage());
      default:
        return _materialRoute(const OnboardingPage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
