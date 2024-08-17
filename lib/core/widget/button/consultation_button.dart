import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/presentation/consultation/screens/consultation_screen.dart';

class ConsultationButton extends StatelessWidget {
  const ConsultationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

    return MaterialButton(
      onPressed: () {
        PrimaryNavigation.pushFromBottom(
          context,
          page: const ConsultationScreen(),
        );
      },
      padding: EdgeInsets.zero,
      shape: const StadiumBorder(),
      child: Container(
        width: AppDimens.large,
        height: AppDimens.large,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  locales?.consultation ?? '',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: AppFontSizes.labelMicro,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
