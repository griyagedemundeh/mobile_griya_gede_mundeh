import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/bottom_sheet/primary_bottom_sheet.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/icon_leading_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';

class AddressSheet {
  static showSheet(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);

    final List<String> addresses = [
      'Jl. Kecubung, Semarapura Kelod, Kec. Klungkung, Kabupaten Klungkung, Bali 80716',
      'Jl. Soka I, Semarapura Kelod, Kec. Klungkung, Kabupaten Klungkung, Bali 80711',
      'Gg. III 13, Semarapura Kangin, Kec. Klungkung, Kabupaten Klungkung, Bali 80761',
    ];

    PrimaryBottomSheet(
      height: height * 0.6,
      content: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.paddingMedium,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              locales?.selectCeremonyLocation ?? '',
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: AppFontSizes.bodyLarge,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppDimens.paddingMedium),
            SizedBox(
              height: height * 0.28,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(height: AppDimens.paddingMedium);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: index == 0
                              ? AppColors.primary1.withOpacity(0.3)
                              : null,
                          border: Border.all(
                            color: index == 0
                                ? AppColors.primary1
                                : AppColors.lightgray2,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(
                            AppDimens.paddingSmall,
                          ),
                        ),
                        child: RadioListTile(
                          value: addresses[index],
                          groupValue: addresses[0],
                          activeColor: AppColors.primary1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              AppDimens.paddingSmall,
                            ),
                          ),
                          onChanged: (String? value) {},
                          title: Text(
                            addresses[index],
                            style: const TextStyle(
                              fontSize: AppFontSizes.bodySmall,
                              color: AppColors.gray2,
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: index == 0,
                        child: Positioned(
                          right: -14,
                          top: -10,
                          child: CircleAvatar(
                            backgroundColor: AppColors.primary1,
                            radius: AppDimens.paddingMedium,
                            child: SvgPicture.asset(
                              AppImages.icLocation,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: AppDimens.marginMedium,
              ),
              child: Divider(
                color: AppColors.lightgray2,
                height: 1,
                thickness: 1,
              ),
            ),
            IconLeadingButton(
              label: locales?.addNewAddress ?? '',
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: AppDimens.paddingSmall,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SecondaryButton(
                    label: locales?.back ?? '',
                    isMedium: true,
                    isOutline: true,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: AppDimens.paddingMedium),
                  PrimaryButton(
                    label: locales?.next ?? '',
                    isMedium: true,
                    onTap: () {
                      PrimaryNavigation.pushFromRight(
                        context,
                        page: const SizedBox(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ).showModalBottom(context);
  }
}
