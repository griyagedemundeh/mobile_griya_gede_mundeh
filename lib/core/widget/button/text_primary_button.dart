import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';

class TextPrimaryButton extends StatelessWidget {
  const TextPrimaryButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      child: Text(
        label,
        style: const TextStyle(
          color: AppColors.primary1,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.primary1,
          fontWeight: FontWeight.bold,
          fontSize: AppFontSizes.bodySmall,
        ),
      ),
    );
  }
}
