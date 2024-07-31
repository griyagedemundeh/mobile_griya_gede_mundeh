import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/router/routers.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/background/background_gradient_primary.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';

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

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late int indexCarousel;
  late CarouselController controller;

  @override
  void initState() {
    indexCarousel = 0;
    controller = CarouselController();
    super.initState();
  }

  @override
  void dispose() {
    controller.stopAutoPlay();
    super.dispose();
  }

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

    final List<Widget> indicators = List.generate(items.length, (index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            indexCarousel = index;
          });
          controller.animateToPage(index);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeInToLinear,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 5,
          width: indexCarousel == index ? 25 : 8,
          decoration: BoxDecoration(
            color: indexCarousel == index ? AppColors.dark1 : AppColors.light1,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      );
    });

    final List<Widget> onboardingItems = List.generate(items.length, (index) {
      return Container(
        width: width,
        height: height,
        margin:
            const EdgeInsets.symmetric(horizontal: AppDimens.borderRadiusLarge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: height * 0.01,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  items[index].icon,
                  height: height * 0.45,
                  width: width,
                  fit: BoxFit.scaleDown,
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
            index == 0
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimens.paddingSmall,
                      vertical: AppDimens.marginLarge,
                    ),
                    child: SecondaryButton(
                      label: locale?.next ?? '',
                      onTap: () {
                        setState(() {
                          indexCarousel = 1;
                        });
                        controller.animateToPage(1);
                      },
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimens.paddingSmall,
                      vertical: AppDimens.marginLarge,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SecondaryButton(
                          label: locale?.register ?? '',
                          isMedium: true,
                          onTap: () {},
                        ),
                        PrimaryButton(
                          label: locale?.login ?? '',
                          isMedium: true,
                          isOutline: true,
                          onTap: () {
                            context.go(Routes.login);
                          },
                        ),
                      ],
                    ),
                  )
          ],
        ),
      );
    });

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: BackgroundGradientPrimary(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                    height: height,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        indexCarousel = index;
                      });
                    }),
                items: onboardingItems,
              ),
              Positioned(
                bottom: height * 0.22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: indicators,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
