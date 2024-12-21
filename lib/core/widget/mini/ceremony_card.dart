import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/chip_status.dart';
import 'package:mobile_griya_gede_mundeh/utils/index.dart';

class CermonyCard extends HookConsumerWidget {
  const CermonyCard({
    super.key,
    required this.location,
    required this.ceremonyType,
    required this.ceremonyTitle,
    required this.date,
    required this.onTap,
    required this.status,
    this.isWithCover,
  });

  final String location;
  final String ceremonyType;
  final String ceremonyTitle;
  final String date; // Expected format: "2024-12-24T02:00:00.000Z"
  final String status;
  final VoidCallback onTap;
  final bool? isWithCover;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    // Hook for managing countdown state
    final countdown = useState<String>('Calculating...');

    var statusColor = AppColors.primary1;

    switch (status.toLowerCase()) {
      case 'onProgress':
        statusColor = AppColors.primary1;
        break;
      case 'onGoing':
        statusColor = Colors.blue;
        break;
      case 'completed':
        statusColor = AppColors.green;
        break;
      case 'canceled':
        statusColor = AppColors.red;
        break;
      default:
        statusColor = AppColors.primary1;
    }

    // Timer setup
    useEffect(() {
      // Parse the date
      DateTime targetDate = DateTime.parse(date);
      Timer? timer;

      void updateCountdown() {
        final now = DateTime.now();
        final difference = targetDate.difference(now);

        if (difference.isNegative) {
          countdown.value = difference.inDays > 0
              ? "${difference.inDays} hari yang lalu"
              : "${difference.inHours * -1} jam yang lalu";
          timer?.cancel();
        } else {
          final days = difference.inDays;
          final hours = difference.inHours % 24;
          final minutes = difference.inMinutes % 60;
          final seconds = difference.inSeconds % 60;

          countdown.value =
              '$days hari $hours jam $minutes menit $seconds detik';
        }
      }

      // Update countdown immediately and then every second
      updateCountdown();
      timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
        updateCountdown();
      });

      return () => timer?.cancel(); // Cleanup on dispose
    }, [date]);

    return MaterialButton(
      onPressed: onTap,
      elevation: 0,
      padding: EdgeInsets.zero,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Visibility(
            visible: isWithCover == true,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
              child: Opacity(
                opacity: 0.7,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    AppDimens.borderRadiusLarge,
                  ),
                  child: Container(
                    width: width,
                    color: Colors.white,
                    child: Image.asset(
                      AppImages.ceremonyWelcome,
                      fit: BoxFit.cover,
                      width: width,
                      height: height * 0.3,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: width,
            padding: const EdgeInsets.all(
              AppDimens.paddingSmall,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color:
                    isWithCover == true ? AppColors.primary1 : AppColors.gray1,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(
                AppDimens.borderRadiusLarge,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppImages.icCeremonyLocation),
                    const SizedBox(width: AppDimens.paddingSmall),
                    Expanded(
                      child: Text(
                        location,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: AppFontSizes.bodySmall,
                          color: AppColors.gray2,
                        ),
                      ),
                    ),
                    const SizedBox(width: AppDimens.paddingMedium),
                    ChipStatus(
                      label: status,
                      color: statusColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppDimens.iconSizeMediumSmall,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ceremonyType,
                      style: const TextStyle(
                        fontSize: AppFontSizes.bodySmall,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: AppDimens.paddingSmall,
                    ),
                    SizedBox(
                      width: width * 0.6,
                      child: Text(
                        ceremonyTitle,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: AppFontSizes.bodyLarge,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppDimens.paddingMicro,
                    ),
                    MetaCeremonyHistory(
                      icon: AppImages.icDate,
                      data: formatDateOnly(date),
                    ),
                    const SizedBox(
                      height: AppDimens.paddingMicro,
                    ),
                    MetaCeremonyHistory(
                      icon: AppImages.icTime,
                      data: formatTimeOnly(date),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppDimens.paddingMedium,
                    bottom: AppDimens.paddingSmall,
                  ),
                  child: Divider(
                    color: isWithCover == true
                        ? AppColors.primary1
                        : AppColors.gray1,
                    height: 1,
                    thickness: 1,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      countdown.value,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RoundedPrimaryButton(
                      onTap: onTap,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedPrimaryButton extends StatelessWidget {
  const RoundedPrimaryButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

    return MaterialButton(
      elevation: 0,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingMedium,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            100,
          ),
        ),
      ),
      onPressed: onTap,
      color: AppColors.primary1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            locales?.more ?? '',
            style: const TextStyle(
              color: Colors.white,
              fontSize: AppFontSizes.bodyMedium,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Icon(
            Icons.chevron_right_rounded,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class MetaCeremonyHistory extends StatelessWidget {
  const MetaCeremonyHistory({
    super.key,
    required this.icon,
    required this.data,
  });

  final String icon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          color: AppColors.gray2,
        ),
        const SizedBox(
          width: AppDimens.paddingSmall,
        ),
        Text(
          data,
          style: const TextStyle(
            color: AppColors.gray2,
            fontSize: AppFontSizes.bodySmall,
          ),
        ),
      ],
    );
  }
}
