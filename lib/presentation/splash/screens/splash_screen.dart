import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/background/background_gradient_primary.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/email_verification_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/screens/main_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/onboarding/screens/onboarding_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/splash/controller/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timerToNextPage;
  late SplashController splashController;

  @override
  void initState() {
    splashController = SplashController(authRepository: AuthRepository());

    timerToNextPage = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (splashController.getUser()?.token != null &&
          splashController.getUser()?.emailVerified == 1) {
        PrimaryNavigation.pushFromRightRemoveUntil(
          context,
          page: const MainScreen(),
        );
        return;
      }

      if (splashController.getUser()?.emailVerified == 0) {
        PrimaryNavigation.pushFromRightRemoveUntil(
          context,
          page: const EmailVerificationScreen(),
        );
        return;
      }

      PrimaryNavigation.pushFromRightRemoveUntil(
        context,
        page: const OnboardingScreen(),
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    timerToNextPage.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: BackgroundGradientPrimary(
        child: Center(
          child: SvgPicture.asset(
            AppImages.logo,
            height: width * 0.3,
            width: width * 0.3,
          ),
        ),
      ),
    );
  }
}
