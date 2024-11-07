import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';

class IconLeadingButton extends StatelessWidget {
  const IconLeadingButton({
    super.key,
    required this.onTap,
    required this.label,
    this.isFilled,
    this.width,
    this.icon,
  });

  final VoidCallback onTap;
  final String label;
  final bool? isFilled;
  final double? width;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      elevation: 0,
      splashColor: AppColors.primary1.withOpacity(0.5),
      color: isFilled == true ? AppColors.primary1.withOpacity(0.2) : null,
      padding: EdgeInsets.zero,
      child: Container(
        width: width ?? double.infinity,
        padding: const EdgeInsets.all(AppDimens.paddingSmall),
        decoration: isFilled == true
            ? BoxDecoration(
                color: AppColors.primary1.withOpacity(0.2),
                border: const Border.symmetric(
                  horizontal: BorderSide(
                    color: AppColors.primary1,
                    width: 1.5,
                  ),
                ),
              )
            : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.primary1,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  AppDimens.paddingMicro,
                ),
              ),
              child: Icon(
                icon ?? Icons.add,
                color: AppColors.primary1,
                size: AppDimens.paddingMedium,
                weight: 2,
              ),
            ),
            const SizedBox(width: AppDimens.paddingSmall),
            Text(
              label,
              style: const TextStyle(
                color: AppColors.primary1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
