import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/background/mesh_top_background.dart';
import 'package:shimmer/shimmer.dart';

class DetailCeremonyScreen extends StatelessWidget {
  const DetailCeremonyScreen({super.key, this.id});

  final String? id;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          const MeshAppBar(
            title: "Detail Upacara",
          ),
          SingleChildScrollView(
              child: Column(
            children: [
              Container(
                color: AppColors.lightgray,
                child: Column(
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          "https://ik.imagekit.io/tvlk/blog/2020/05/Upacara-Melasti-Website-Resmi-Pemerintah-Kabupaten-Buleleng.jpg?tr=dpr-2,w-675",
                      fit: BoxFit.cover,
                      height: height * 0.25,
                      width: width,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) {
                        return Shimmer.fromColors(
                          baseColor: AppColors.gray2.withOpacity(0.6),
                          highlightColor: AppColors.light1,
                          child: const SizedBox(),
                        );
                      },
                      errorWidget: (context, url, error) => const SizedBox(),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppDimens.paddingMedium,
                        horizontal: AppDimens.paddingLarge,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MiniThumbnail(
                            index: 1,
                            thumbNailUrl:
                                "https://ik.imagekit.io/tvlk/blog/2020/05/Upacara-Melasti-Website-Resmi-Pemerintah-Kabupaten-Buleleng.jpg?tr=dpr-2,w-675",
                          ),
                          MiniThumbnail(
                            index: 1,
                            thumbNailUrl:
                                "https://ik.imagekit.io/tvlk/blog/2020/05/Upacara-Melasti-Website-Resmi-Pemerintah-Kabupaten-Buleleng.jpg?tr=dpr-2,w-675",
                          ),
                          MiniThumbnail(
                            index: 1,
                            thumbNailUrl:
                                "https://ik.imagekit.io/tvlk/blog/2020/05/Upacara-Melasti-Website-Resmi-Pemerintah-Kabupaten-Buleleng.jpg?tr=dpr-2,w-675",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}

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
    return MaterialButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.primary1,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
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
    );
  }
}

class MeshAppBar extends StatelessWidget {
  const MeshAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double paddingTop = MediaQuery.of(context).padding.top;

    return Stack(
      children: [
        const MeshPrimary(
          top: -200,
          right: -50,
        ),
        Padding(
          padding: EdgeInsets.only(top: paddingTop),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: AppDimens.borderRadiusLarge,
              horizontal: AppDimens.paddingMedium,
            ),
            width: width,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BorderedIconButton(
                    icon: const Icon(
                      Icons.chevron_left_rounded,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: AppFontSizes.titleLarge,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  BorderedIconButton(
                    icon: const Text(
                      "i",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppFontSizes.bodyLarge,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BorderedIconButton extends StatelessWidget {
  const BorderedIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final Widget icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      minWidth: 0,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.dark1, width: 1),
          borderRadius: BorderRadius.circular(
            AppDimens.borderRadiusMedium,
          ),
        ),
        child: SizedBox(
          width: AppDimens.iconSizeSmall,
          height: AppDimens.iconSizeSmall,
          child: Center(
            child: icon,
          ),
        ),
      ),
    );
  }
}
