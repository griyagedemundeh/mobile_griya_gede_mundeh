import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';

class ChipStatus extends StatelessWidget {
  const ChipStatus({
    super.key,
    required this.label,
    required this.color,
  });

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingSmall,
        vertical: AppDimens.paddingMicro,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(
          0.3,
        ),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: color,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: AppDimens.paddingMicro,
            backgroundColor: color,
          ),
          const SizedBox(
            width: AppDimens.paddingMicro,
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: AppFontSizes.bodySmall,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
