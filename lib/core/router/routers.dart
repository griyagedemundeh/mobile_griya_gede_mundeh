import 'package:go_router/go_router.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/login_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/screens/home_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/onboarding/screens/onboarding_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/splash/screens/splash_screen.dart';

abstract class Routes {
  static String splash = "/";
  static String home = "/home";
  static String onboarding = "/onboarding";
  static String login = "/login";
  static String register = "/register";
}

abstract class AppRouter {
  static GoRouter routes = GoRouter(routes: [
    GoRoute(
      name: Routes.splash,
      path: Routes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: Routes.onboarding,
      path: Routes.onboarding,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      name: Routes.login,
      path: Routes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: Routes.home,
      path: Routes.home,
      builder: (context, state) => const HomeScreen(),
    ),
  ]);
}
