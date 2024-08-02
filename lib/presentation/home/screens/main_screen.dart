import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/bottom_bar/bottom_bar.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/consultation_button.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/screens/home_screen.dart';

class MainScreen extends HookConsumerWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const ConsultationButton(),
      bottomNavigationBar: BottomNavBar(
        controller: pageController,
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: const [
          HomeScreen(),
          SizedBox(),
          SizedBox(),
          SizedBox(),
        ],
      ),
    );
  }
}
