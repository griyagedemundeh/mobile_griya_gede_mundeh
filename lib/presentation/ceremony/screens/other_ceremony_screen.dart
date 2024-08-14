import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/icon_rounded_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/detail_ceremony_screen.dart';
import 'package:shimmer/shimmer.dart';

class CeremonyService {
  final String id;
  final String iconUrl;
  final String title;
  final String description;

  CeremonyService({
    required this.id,
    required this.iconUrl,
    required this.title,
    required this.description,
  });
}

class OtherCeremonyScreen extends HookConsumerWidget {
  const OtherCeremonyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);
    final scrollController = useScrollController();

    final List<CeremonyService> ceremonyServices = [
      CeremonyService(
        id: "1",
        iconUrl:
            "https://asset-a.grid.id/crop/0x0:0x0/780x800/photo/bobofoto/original/22383_upacara-potong-gigi-di-bali.jpg",
        title: "Metatah",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ),
      CeremonyService(
        id: "2",
        iconUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpQc4j3Rs-cgCFuRNqbKXAEgyWvtCBrSTvmQ&s",
        title: "Mebayuh",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ),
      CeremonyService(
        id: "3",
        iconUrl:
            "https://rebornprojectmedia.com/wp-content/uploads/2022/03/Melaspas_7-scaled.jpg",
        title: "Melaspas",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ),
      CeremonyService(
        id: "4",
        iconUrl:
            "https://panbelog.wordpress.com/wp-content/uploads/2014/11/112214_0125_pawiwahan1.jpg",
        title: "Pawiwahan",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ),
      CeremonyService(
        id: "5",
        iconUrl:
            "https://assets-a1.kompasiana.com/statics/crawl/553016ae0423bdeb638b4567.jpeg",
        title: "Otonan",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ),
      CeremonyService(
        id: "6",
        iconUrl: "https://nusantara7.id/wp-content/uploads/2021/07/mecaru.jpg",
        title: "Mecaru",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ),
      CeremonyService(
        id: "7",
        iconUrl:
            "https://lh3.googleusercontent.com/proxy/RnpePuRN5t9M3wSWsOTIOFLJBKHZ7TMMWRs7zOQbz4xqDShUQwaeACoCb6ex6xiZG1sYcAfQrvSyJBSO-BBcp3MfKO_-6OwjPyaAklvwXdH_K5Pm",
        title: "Mewinten",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ),
      CeremonyService(
        id: "8",
        iconUrl:
            "https://ik.imagekit.io/tvlk/blog/2020/05/Upacara-Melasti-Website-Resmi-Pemerintah-Kabupaten-Buleleng.jpg?tr=dpr-2,w-675",
        title: "Lainnya",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ),
    ];

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: AppDimens.iconSizeLarge,
        width: AppDimens.iconSizeLarge,
        child: IconRoundedButton(
          icon: Icons.keyboard_double_arrow_up_rounded,
          onTap: () {
            scrollController.jumpTo(0);
          },
        ),
      ),
      bottomNavigationBar: Container(
        height: height * 0.04,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              blurRadius: 40,
              color: Colors.white,
              spreadRadius: 30,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          MeshAppBar(
            title: locales?.otherCeremony ?? '',
          ),
          Expanded(
            child: ListView.separated(
              controller: scrollController,
              padding: const EdgeInsets.all(
                AppDimens.paddingMedium,
              ),
              itemCount: ceremonyServices.length,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: AppDimens.paddingMedium,
                );
              },
              itemBuilder: (context, index) {
                final ceremony = ceremonyServices[index];

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
                          child: CachedNetworkImage(
                            imageUrl: ceremony.iconUrl,
                            fit: BoxFit.cover,
                            height: height * 0.3,
                            width: width,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) {
                              return Shimmer.fromColors(
                                baseColor: AppColors.gray2.withOpacity(0.6),
                                highlightColor: AppColors.light1,
                                child: const SizedBox(),
                              );
                            },
                            errorWidget: (context, url, error) =>
                                const SizedBox(),
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
                              ceremony.title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: AppColors.light1,
                                fontSize: AppFontSizes.bodyLarge,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppDimens.iconSizeLarge,
                            ),
                            child: Text(
                              ceremony.description,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: AppColors.lightgray,
                                fontSize: AppFontSizes.labelSmall,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.all(AppDimens.marginMedium),
                            child: PrimaryButton(
                              label: locales?.detailCeremony ?? '',
                              isOutline: true,
                              isFullRounded: true,
                              onTap: () {
                                PrimaryNavigation.pushFromRight(
                                  context,
                                  page: const DetailCeremonyScreen(),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
