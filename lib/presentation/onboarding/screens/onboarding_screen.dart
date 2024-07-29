import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/background/background_gradient_primary.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnboardingItem {
  final String icon;
  final String headline;
  final String description;

  OnboardingItem({
    required this.icon,
    required this.headline,
    required this.description,
  });
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    final locale = AppLocalizations.of(context);

    final List<OnboardingItem> items = [
      OnboardingItem(
        icon: AppImages.onboarding1,
        headline: locale?.onboardingHead1 ?? '',
        description: locale?.onboardingDesc1 ?? '',
      ),
      OnboardingItem(
        icon: AppImages.onboarding2,
        headline: locale?.onboardingHead2 ?? '',
        description: locale?.onboardingDesc2 ?? '',
      )
    ];

    final List<Widget> onboardingItems = List.generate(items.length, (index) {
      return Container(
        width: width,
        height: height,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              items[index].icon,
              height: 100,
              width: 100,
              fit: BoxFit.contain,
            ),
            Column(
              children: [
                Text(
                  items[index].headline,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: AppFontSizes.headlineLarge,
                    color: AppColors.light1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  items[index].description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: AppFontSizes.bodyLarge,
                    color: AppColors.light1,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });

    return Scaffold(
      body: SizedBox(
        height: height,
        child: BackgroundGradientPrimary(
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              height: height * 0.7,
              viewportFraction: 1,
            ),
            items: onboardingItems,
          ),
        ),
      ),
    );
  }
}
