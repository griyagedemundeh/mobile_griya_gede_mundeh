import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';

class SelectedButtonsPackage extends StatelessWidget {
  const SelectedButtonsPackage({
    super.key,
    required this.onTapButtonPrimary,
    this.onTapButtonSecondary,
    this.labelPrimary,
    this.labelSecondary,
    this.isLoading,
  });

  final VoidCallback onTapButtonPrimary;
  final VoidCallback? onTapButtonSecondary;
  final String? labelPrimary;
  final String? labelSecondary;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final locales = AppLocalizations.of(context);

    return Container(
      height: height * (onTapButtonSecondary != null ? 0.25 : 0.15),
      width: width,
      padding: const EdgeInsets.all(
        AppDimens.paddingMedium,
      ),
      child: Column(
        children: [
          PrimaryButton(
            label: labelPrimary ?? locales?.next ?? '',
            onTap: onTapButtonPrimary,
            isLoading: isLoading,
          ),
          const SizedBox(height: AppDimens.paddingMedium),
          Visibility(
            visible: onTapButtonSecondary != null,
            child: SecondaryButton(
              label: labelSecondary ?? locales?.nextWithoutPackage ?? '',
              isLoading: isLoading,
              onTap: () {
                if (onTapButtonSecondary != null) {
                  onTapButtonSecondary!();
                }
              },
              isOutline: true,
            ),
          ),
          SizedBox(
            height: onTapButtonSecondary != null ? AppDimens.marginLarge : 0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.info_outline_rounded,
                size: AppDimens.borderRadiusLarge,
                color: AppColors.lightgray2,
              ),
              Expanded(
                child: Text(
                  locales?.consultWithoutWorry ?? '',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: AppFontSizes.labelExtraMicro,
                    color: AppColors.lightgray2,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
