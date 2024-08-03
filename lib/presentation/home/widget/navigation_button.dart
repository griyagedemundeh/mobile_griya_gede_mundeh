import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
    required this.isTap,
  });

  final String label;
  final String icon;
  final VoidCallback onTap;
  final bool isTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        splashColor: AppColors.gray1,
        onTap: onTap,
        child: SizedBox(
          width: AppDimens.big,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                color: isTap
                    ? AppColors.primary1.withOpacity(0.95)
                    : AppColors.gray1,
                height: AppDimens.paddingMediumLarge,
                width: AppDimens.paddingMediumLarge,
              ),
              const SizedBox(height: AppDimens.paddingMicro),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: AppFontSizes.labelSmall,
                  color: isTap
                      ? AppColors.primary1.withOpacity(0.95)
                      : AppColors.gray1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
