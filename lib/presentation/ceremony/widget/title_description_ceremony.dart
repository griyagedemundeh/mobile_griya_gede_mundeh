import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';

class TitleAndDescriptionCeremony extends StatelessWidget {
  const TitleAndDescriptionCeremony({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "🛕 Upacara Ngaben",
          style: TextStyle(
            fontSize: AppFontSizes.titleMediumLarge,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: AppDimens.paddingSmall,
        ),
        Text(
          """Lorem ipsum odor amet, consectetuer adipiscing elit. Himenaeos nascetur vulputate praesent aliquam ante pharetra. Enim justo dapibus porttitor porta dolor.

    Volutpat duis nascetur elementum hac massa tincidunt suscipit odio. Elit duis facilisi sapien interdum nam. Senectus adipiscing ad euismod lacinia orci sociosqu eget fusce.""",
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
