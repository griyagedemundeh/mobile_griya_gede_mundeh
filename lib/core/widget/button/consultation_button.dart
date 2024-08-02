import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';

class ConsultationButton extends StatelessWidget {
  const ConsultationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: AppDimens.bigMedium,
        height: AppDimens.bigMedium,
        padding: const EdgeInsets.all(AppDimens.paddingMicro),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primary1.withOpacity(0.95),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImages.icConsultation,
                height: AppDimens.iconSizeSmall,
                width: AppDimens.iconSizeSmall,
                color: Colors.white,
              ),
              Text(
                locales?.consultation ?? '',
                style: const TextStyle(
                  fontSize: AppFontSizes.labelMicro,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
