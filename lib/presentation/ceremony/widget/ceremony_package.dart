import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';

class CeremonyPackage extends StatelessWidget {
  const CeremonyPackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.paddingMedium),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CeremonyPricePackage(),
          SizedBox(
            height: AppDimens.paddingLarge,
          ),
          CeremonyDescriptionPackage(),
        ],
      ),
    );
  }
}

class CeremonyDescriptionPackage extends StatelessWidget {
  const CeremonyDescriptionPackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          locales?.packageDescription ?? '',
          style: const TextStyle(
            fontSize: AppFontSizes.bodyLarge,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: AppDimens.paddingSmall,
        ),
        Text(
          """Lorem ipsum odor amet, consectetuer adipiscing elit. Himenaeos nascetur vulputate praesent aliquam ante pharetra. Enim justo dapibus porttitor porta dolor.
    
    Volutpat duis nascetur elementum hac massa tincidunt suscipit odio. Elit duis facilisi sapien interdum nam. Senectus adipiscing ad euismod lacinia orci sociosqu eget fusce.
    """,
          style: TextStyle(
            fontSize: AppFontSizes.bodySmall,
            color: AppColors.primaryText.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}

class CeremonyPricePackage extends StatelessWidget {
  const CeremonyPricePackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          locales?.packagePrice ?? '',
          style: const TextStyle(
            fontSize: AppFontSizes.bodyLarge,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: AppDimens.paddingSmall,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: AppDimens.paddingSmall,
            horizontal: AppDimens.marginLarge,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary1.withOpacity(0.3),
            borderRadius: BorderRadius.circular(
              100,
            ),
            border: Border.all(
              color: AppColors.primary1,
              width: 2,
            ),
          ),
          child: const Text(
            "Rp 2.500.000",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
