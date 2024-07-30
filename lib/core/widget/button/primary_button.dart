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
  });

  final String label;
  final VoidCallback onTap;
  final bool? isOutline;
  final bool? isMedium;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isMedium != null && isMedium == true
          ? MediaQuery.of(context).size.width * 0.4
          : MediaQuery.of(context).size.width,
      child: MaterialButton(
        elevation: 0,
        padding: EdgeInsets.symmetric(
          vertical: AppDimens.marginSmall,
          horizontal:
              isMedium != null && isMedium == true ? AppDimens.paddingSmall : 0,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isOutline != null && isOutline == true
                ? AppColors.gray1
                : Colors.transparent,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppDimens.marginSmall),
          ),
        ),
        onPressed: isLoading == true ? () {} : onTap,
        color: isOutline != null && isOutline == true
            ? null
            : isLoading == true
                ? AppColors.primary2.withOpacity(0.5)
                : AppColors.primary2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                color: isOutline != null && isOutline == true
                    ? null
                    : AppColors.light1,
                fontSize: AppFontSizes.bodyLarge,
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
                          color: AppColors.light1,
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
