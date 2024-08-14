import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);

    return SizedBox(
      height: height * 0.22,
      width: width,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              10,
            ),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.darken,
              ),
              child: Image.asset(
                AppImages.welcome,
                width: width,
                height: height * 0.3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: AppDimens.paddingLarge),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.iconSizeLarge,
                ),
                child: Text(
                  locales?.welcomMessage ?? '',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.light1,
                    fontSize: AppFontSizes.bodyMedium,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppDimens.marginSmall),
                child: SvgPicture.asset(
                  AppImages.scrollDown,
                  height: 40,
                  width: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
