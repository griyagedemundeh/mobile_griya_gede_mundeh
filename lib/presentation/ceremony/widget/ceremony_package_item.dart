import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/utils/index.dart';

class CeremonyPackageItem extends StatelessWidget {
  const CeremonyPackageItem({
    super.key,
    required this.price,
    required this.description,
  });

  final int price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppDimens.paddingMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CeremonyPricePackage(
            price: price,
          ),
          const SizedBox(
            height: AppDimens.paddingLarge,
          ),
          CeremonyDescriptionPackage(
            description: description,
          ),
        ],
      ),
    );
  }
}

class CeremonyDescriptionPackage extends StatelessWidget {
  const CeremonyDescriptionPackage({
    super.key,
    required this.description,
  });

  final String description;

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
        HtmlWidget(description),
      ],
    );
  }
}

class CeremonyPricePackage extends StatelessWidget {
  const CeremonyPricePackage({
    super.key,
    required this.price,
  });

  final int price;

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
          child: Text(
            formatCurrency(price),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
