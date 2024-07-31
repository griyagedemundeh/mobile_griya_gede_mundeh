import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/login_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/screens/home_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/onboarding/screens/onboarding_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/splash/screens/splash_screen.dart';

abstract class Routes {
  static const String splash = "/";
  static const String home = "/home";
  static const String onboarding = "/onboarding";
  static const String login = "/login";
  static const String register = "/register";
}

abstract class AppRouter {
  static Route routes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.onboarding:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
  }
}
