import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/login_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/register_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/detail_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/other_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/screens/home_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/screens/main_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/onboarding/screens/onboarding_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/splash/screens/splash_screen.dart';

abstract class Routes {
  static const String splash = "/";
  static const String main = "/main";
  static const String home = "/home";
  static const String onboarding = "/onboarding";
  static const String login = "/login";
  static const String register = "/register";
  static const String detailCeremony = "/detail-ceremony";
  static const String otherCeremony = "/other-ceremony";
}

abstract class AppRouter {
  static Route routes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case Routes.main:
        return MaterialPageRoute(
          builder: (context) => const MainScreen(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case Routes.detailCeremony:
        return MaterialPageRoute(
          builder: (context) => const DetailCeremonyScreen(),
        );
      case Routes.otherCeremony:
        return MaterialPageRoute(
          builder: (context) => const OtherCeremonyScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: SizedBox(),
          ),
        );
    }
  }
}
