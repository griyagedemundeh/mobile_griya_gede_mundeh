import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';

class TextPrimaryButton extends StatelessWidget {
  const TextPrimaryButton({
    super.key,
    required this.label,
    required this.onTap,
    this.fontSize,
    this.icon,
  });

  final String label;
  final VoidCallback onTap;
  final double? fontSize;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: AppColors.primary1,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.primary1,
              fontWeight: FontWeight.bold,
              fontSize: fontSize ?? AppFontSizes.bodySmall,
            ),
          ),
          icon ?? const SizedBox(),
        ],
      ),
    );
  }
}
