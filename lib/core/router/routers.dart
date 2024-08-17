import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/login_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/register_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/consultation_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/detail_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/other_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony_history/screens/ceremony_histories_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony_history/screens/detail_ceremony_history_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/consultation/screens/consultation_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/screens/home_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/screens/main_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/onboarding/screens/onboarding_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/setting/screens/profile_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/setting/screens/setting_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/splash/screens/splash_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/transaction/screens/detail_transaction_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/transaction/screens/transactions_screen.dart';

abstract class Routes {
  static const String splash = "/";
  static const String main = "/main";
  static const String home = "/home";
  static const String onboarding = "/onboarding";
  static const String login = "/login";
  static const String register = "/register";
  static const String detailCeremony = "/detail-ceremony";
  static const String otherCeremony = "/other-ceremony";
  static const String consultationCeremony = "/consultation-ceremony";
  static const String transactions = "/transactions";
  static const String detailTransaction = "/detail-transaction";
  static const String ceremonyHistories = "/ceremony-histories";
  static const String ceremonyHistory = "/ceremony-history";
  static const String detailCeremonyHistory = "/detail-ceremony-history";
  static const String setting = "/setting";
  static const String profile = "/profile";
  static const String consultation = "/consultation";
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
      case Routes.consultationCeremony:
        return MaterialPageRoute(
          builder: (context) => const ConsultationCeremonyScreen(),
        );
      case Routes.otherCeremony:
        return MaterialPageRoute(
          builder: (context) => const OtherCeremonyScreen(),
        );
      case Routes.transactions:
        return MaterialPageRoute(
          builder: (context) => const TransactionsScreen(),
        );
      case Routes.detailTransaction:
        return MaterialPageRoute(
          builder: (context) => const DetailTransactionScreen(),
        );
      case Routes.ceremonyHistories:
        return MaterialPageRoute(
          builder: (context) => const CeremonyHistoriesScreen(),
        );
      case Routes.detailCeremonyHistory:
        return MaterialPageRoute(
          builder: (context) => const DetailCeremonyHistoryScreen(),
        );
      case Routes.setting:
        return MaterialPageRoute(
          builder: (context) => const SettingScreen(),
        );
      case Routes.profile:
        return MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
        );
      case Routes.consultation:
        return MaterialPageRoute(
          builder: (context) => const ConsultationScreen(),
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
