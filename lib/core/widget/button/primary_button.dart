import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.label,
    required this.onTap,
    this.isOutline,
    this.isMedium,
    this.isLoading,
    this.isFullRounded,
  });

  final String label;
  final VoidCallback onTap;
  final bool? isOutline;
  final bool? isMedium;
  final bool? isLoading;
  final bool? isFullRounded;

  @override
  Widget build(BuildContext context) {
    if (isMedium == true) {
      return Expanded(
        child: BaseButton(
          isMedium: isMedium,
          isOutline: isOutline,
          isLoading: isLoading,
          onTap: onTap,
          label: label,
          isFullRounded: isFullRounded,
        ),
      );
    } else {
      return BaseButton(
        isMedium: isMedium,
        isOutline: isOutline,
        isLoading: isLoading,
        onTap: onTap,
        label: label,
        isFullRounded: isFullRounded,
      );
    }
  }
}

class BaseButton extends StatelessWidget {
  const BaseButton({
    super.key,
    required this.isMedium,
    required this.isOutline,
    required this.isLoading,
    required this.onTap,
    required this.label,
    required this.isFullRounded,
  });

  final bool? isMedium;
  final bool? isOutline;
  final bool? isLoading;
  final VoidCallback onTap;
  final String label;
  final bool? isFullRounded;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isMedium != null && isMedium == true
          ? null
          : MediaQuery.of(context).size.width,
      child: MaterialButton(
        elevation: 0,
        padding: EdgeInsets.symmetric(
          vertical: AppDimens.marginMedium,
          horizontal:
              isMedium != null && isMedium == true ? AppDimens.paddingSmall : 0,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isOutline != null && isOutline == true
                ? AppColors.primary1
                : Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              isFullRounded == true ? 100 : AppDimens.marginSmall,
            ),
          ),
        ),
        onPressed: isLoading == true ? () {} : onTap,
        color: isOutline != null && isOutline == true
            ? null
            : isLoading == true
                ? AppColors.primary1.withOpacity(0.5)
                : AppColors.primary1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                color: isOutline != null && isOutline == true
                    ? AppColors.primary1
                    : Colors.white,
                fontSize: AppFontSizes.bodyMedium,
                fontWeight: FontWeight.bold,
              ),
            ),
            isLoading == true
                ? const Row(
                    children: [
                      SizedBox(width: AppDimens.marginSmall),
                      SizedBox(
                        height: AppDimens.marginSmall,
                        width: AppDimens.marginSmall,
                        child: CircularProgressIndicator(
                          color: AppColors.dark1,
                          strokeWidth: 2,
                        ),
                      ),
                    ],
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
