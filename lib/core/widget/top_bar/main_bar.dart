import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:shimmer/shimmer.dart';

class MainBar extends StatelessWidget {
  const MainBar({
    super.key,
    required this.imgUrl,
    required this.name,
  });

  final String imgUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final locales = AppLocalizations.of(context);

    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingLarge,
        vertical: AppDimens.paddingMediumLarge,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.primary1,
                radius: AppDimens.iconSizeMediumSmall,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: CachedNetworkImage(
                    imageUrl: imgUrl,
                    fit: BoxFit.scaleDown,
                    height: double.infinity,
                    width: double.infinity,
                    progressIndicatorBuilder: (context, url, downloadProgress) {
                      return Shimmer.fromColors(
                        baseColor: AppColors.gray2.withOpacity(0.6),
                        highlightColor: AppColors.light1,
                        child: const SizedBox(),
                      );
                    },
                    errorWidget: (context, url, error) => const SizedBox(),
                  ),
                ),
              ),
              const SizedBox(width: AppDimens.marginMedium),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    locales?.greeting('Pagi') ?? '',
                    style: const TextStyle(
                      color: AppColors.gray2,
                    ),
                  ),
                  Text(
                    "$name👋",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppFontSizes.bodyLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {},
            height: AppDimens.iconSizeLarge,
            minWidth: AppDimens.iconSizeMedium,
            padding: const EdgeInsets.all(4),
            clipBehavior: Clip.hardEdge,
            shape: const StadiumBorder(),
            child: SvgPicture.asset(
              AppImages.notification,
              height: AppDimens.iconSizeSmall,
              width: AppDimens.iconSizeSmall,
            ),
          ),
        ],
      ),
    );
  }
}
