import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final double paddingTop = MediaQuery.of(context).padding.top;
    final locales = AppLocalizations.of(context);

    return Scaffold(
      body: MeshTopBackground(
        child: Padding(
          padding: EdgeInsets.only(top: paddingTop),
          child: Column(
            children: [
              const HomeBar(),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: AppDimens.paddingLarge,
                ),
                child: Column(
                  children: [
                    SizedBox(
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
                                Colors.black.withOpacity(0.6),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              SvgPicture.asset(
                                AppImages.scrollDown,
                                height: 40,
                                width: 40,
                              ),
                              const SizedBox(height: AppDimens.paddingMicro),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeBar extends StatelessWidget {
  const HomeBar({
    super.key,
  });

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
                    imageUrl:
                        'https://static.wikia.nocookie.net/hellokitty/images/a/a1/Sanrio_Characters_Badtz-Maru_Image006.png/revision/latest?cb=20170401205819',
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
                  const Text(
                    "Bimo👋",
                    style: TextStyle(
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

class MeshTopBackground extends StatelessWidget {
  const MeshTopBackground({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          const MeshPrimaryTopBar(),
          child,
        ],
      ),
    );
  }
}

class MeshPrimaryTopBar extends StatelessWidget {
  const MeshPrimaryTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * 0.3,
      width: width,
      child: const Stack(
        children: [
          MeshPrimary(
            top: -160,
            right: -20,
          ),
          MeshPrimary(
            left: -200,
            bottom: -210,
          ),
          MeshPrimary(
            right: -200,
            bottom: -220,
          ),
        ],
      ),
    );
  }
}

class MeshPrimary extends StatelessWidget {
  const MeshPrimary({
    super.key,
    this.top,
    this.bottom,
    this.right,
    this.left,
  });

  final double? top;
  final double? bottom;
  final double? right;
  final double? left;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Positioned(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
      child: Container(
        height: height * 0.3,
        width: height * 0.35,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 200,
              spreadRadius: 10,
              color: AppColors.primary1,
            )
          ],
        ),
      ),
    );
  }
}
