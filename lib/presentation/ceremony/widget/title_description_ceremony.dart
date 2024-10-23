import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';

class TitleAndDescriptionCeremony extends StatelessWidget {
  const TitleAndDescriptionCeremony({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "🛕 $title",
          style: const TextStyle(
            fontSize: AppFontSizes.titleMediumLarge,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: AppDimens.paddingSmall,
        ),
        Text(
          description,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: AppFontSizes.bodySmall,
            color: AppColors.primaryText.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
