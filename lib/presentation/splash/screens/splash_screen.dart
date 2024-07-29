import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_griya_gede_mundeh/core/router/routers.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/background/background_gradient_primary.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timerToNextPage;

  @override
  void initState() {
    timerToNextPage = Timer.periodic(const Duration(seconds: 3), (timer) {
      context.go(Routes.onboarding);
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
    return const Scaffold(
      body: BackgroundGradientPrimary(
        child: Center(
          child: Text('GRIYA GEDE MUNDEH'),
        ),
      ),
    );
  }
}
