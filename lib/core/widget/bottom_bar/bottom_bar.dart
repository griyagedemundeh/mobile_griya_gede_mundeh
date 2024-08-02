import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/widget/navigation_button.dart';

class BottomNavBar extends HookConsumerWidget {
  const BottomNavBar({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locales = AppLocalizations.of(context);
    final index = useState(0);

    return Container(
      height: AppDimens.large,
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingMedium),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppDimens.paddingMediumLarge),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationButton(
            icon: AppImages.icHome,
            label: locales?.home ?? '',
            isTap: index.value == 0,
            onTap: () {
              index.value = 0;
              controller.animateToPage(
                index.value,
                duration: const Duration(milliseconds: 10),
                curve: Curves.easeInOut,
              );
            },
          ),
          NavigationButton(
            icon: AppImages.icHistory,
            label: locales?.ceremonyHistory ?? '',
            isTap: index.value == 1,
            onTap: () {
              index.value = 1;
              controller.animateToPage(
                index.value,
                duration: const Duration(milliseconds: 10),
                curve: Curves.easeInOut,
              );
            },
          ),
          const Expanded(
            child: SizedBox(),
          ),
          NavigationButton(
            icon: AppImages.icTransaction,
            label: locales?.transaction ?? '',
            isTap: index.value == 2,
            onTap: () {
              index.value = 2;
              controller.animateToPage(
                index.value,
                duration: const Duration(milliseconds: 10),
                curve: Curves.easeInOut,
              );
            },
          ),
          NavigationButton(
            icon: AppImages.icProfile,
            label: locales?.profile ?? '',
            isTap: index.value == 3,
            onTap: () {
              index.value = 3;
              controller.animateToPage(
                index.value,
                duration: const Duration(milliseconds: 10),
                curve: Curves.easeInOut,
              );
            },
          ),
        ],
      ),
    );
  }
}
