import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/text_primary_button.dart';

class ButtonWithTitle extends StatelessWidget {
  const ButtonWithTitle({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  locales?.articleAndInfo ?? '',
                  style: const TextStyle(
                    fontSize: AppFontSizes.bodyLarge,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  locales?.articleAndInfoDescription ?? '',
                  style: const TextStyle(
                    fontSize: AppFontSizes.bodySmall,
                    color: AppColors.gray2,
                  ),
                ),
              ],
            ),
          ),
          TextPrimaryButton(
            label: locales?.seeAll ?? '',
            onTap: onTap ?? () {},
            fontSize: AppFontSizes.bodyMedium,
            icon: const Icon(
              Icons.chevron_right_rounded,
              color: AppColors.primary1,
            ),
          ),
        ],
      ),
    );
  }
}
