import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:shimmer/shimmer.dart';

class MiniThumbnail extends HookConsumerWidget {
  const MiniThumbnail({
    super.key,
    required this.index,
    required this.thumbNailUrl,
  });

  final int index;
  final String thumbNailUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locales = AppLocalizations.of(context);

    return MaterialButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(index == 3 ? 0.6 : 0),
                  BlendMode.darken,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: thumbNailUrl,
                    fit: BoxFit.cover,
                    height: AppDimens.appBarHeight,
                    width: AppDimens.xxl,
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
              Visibility(
                visible: index == 3,
                child: Text(
                  locales?.seeAll ?? '',
                  style: const TextStyle(
                    fontSize: AppFontSizes.labelSmall,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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
