import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThumbnailCeremony {
  final String id;
  final String thumbnailUrl;

  ThumbnailCeremony({required this.id, required this.thumbnailUrl});
}

class DetailCeremonyScreen extends HookConsumerWidget {
  const DetailCeremonyScreen({super.key, this.id});

  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final locales = AppLocalizations.of(context);
    final isOpened = useState(false);

    final List<ThumbnailCeremony> thumbnails = [
      ThumbnailCeremony(
        id: "1",
        thumbnailUrl:
            "https://awsimages.detik.net.id/community/media/visual/2022/08/02/melihat-prosesi-ngaben-massal-di-bali-2_169.jpeg?w=600&q=90",
      ),
      ThumbnailCeremony(
        id: "2",
        thumbnailUrl:
            "https://firstlomboktour.com/wp-content/uploads/2021/12/ngaden-1024x673.jpg.webp",
      ),
      ThumbnailCeremony(
        id: "3",
        thumbnailUrl:
            "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1586262431/1200px-Ngaben_Cremation_vih3yt.jpg",
      ),
      ThumbnailCeremony(
        id: "4",
        thumbnailUrl:
            "https://kamboja.co.id/wp-content/uploads/2021/06/biaya-ngaben-di-bali.jpg",
      ),
      ThumbnailCeremony(
        id: "5",
        thumbnailUrl:
            "https://www.baliviralnews.com/wp-content/uploads/2020/11/Ngaben-Bikul-13.jpg",
      ),
      ThumbnailCeremony(
        id: "6",
        thumbnailUrl:
            "https://osccdn.medcom.id/images/content/2022/11/30/bd2176d03953542cc52af2b46a761b70.jpg",
      ),
    ];

    final List<Widget> miniThumbnails =
        List.generate(thumbnails.length, (index) {
      if (index == 0) {
        return const SizedBox();
      }

      if (index > 3) {
        return const SizedBox();
      }

      return MiniThumbnail(
        index: index,
        thumbNailUrl: thumbnails[index].thumbnailUrl,
      );
    });

    return Scaffold(
      bottomNavigationBar: Visibility(
        visible: isOpened.value,
        child: Container(
          height: height * 0.25,
          width: width,
          padding: const EdgeInsets.all(
            AppDimens.paddingMedium,
          ),
          child: Column(
            children: [
              PrimaryButton(
                label: locales?.next ?? '',
                onTap: () {},
              ),
              const SizedBox(height: AppDimens.paddingMedium),
              SecondaryButton(
                label: locales?.nextWithoutPackage ?? '',
                onTap: () {},
                isOutline: true,
              ),
              const SizedBox(height: AppDimens.marginLarge),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.info_outline_rounded,
                    size: AppDimens.borderRadiusLarge,
                    color: AppColors.lightgray2,
                  ),
                  Expanded(
                    child: Text(
                      locales?.consultWithoutWorry ?? '',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: AppFontSizes.labelExtraMicro,
                        color: AppColors.lightgray2,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          MeshAppBar(
            title: locales?.detailCeremony ?? '',
          ),
          Expanded(
            child: SlidingUpPanel(
              minHeight: height * 0.5,
              maxHeight: height,
              parallaxEnabled: true,
              backdropEnabled: true,
              onPanelOpened: () {
                isOpened.value = true;
              },
              onPanelClosed: () {
                isOpened.value = false;
              },
              boxShadow: const [
                BoxShadow(
                  color: Colors.transparent,
                ),
              ],
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: AppColors.lightgray,
                      child: Column(
                        children: [
                          MainThumbnail(
                            thumbnailUrl: thumbnails[0].thumbnailUrl,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: AppDimens.paddingMedium,
                              horizontal: AppDimens.paddingLarge,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: miniThumbnails,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              panelBuilder: (sc) {
                return ListView(
                  controller: sc,
                  padding: EdgeInsets.zero,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppDimens.paddingMedium,
                      ),
                      child: TitleAndDescriptionCeremony(),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppDimens.marginLarge,
                      ),
                      child: Divider(
                        color: AppColors.lightgray,
                        height: AppDimens.marginMedium,
                        thickness: AppDimens.marginMedium,
                      ),
                    ),
                    Column(
                      children: [
                        DefaultTabController(
                          length: 3,
                          child: Column(
                            children: [
                              const TabBar(
                                labelColor: AppColors.dark1,
                                tabAlignment: TabAlignment.center,
                                isScrollable: true,
                                dividerColor: AppColors.gray1,
                                automaticIndicatorColorAdjustment: true,
                                tabs: [
                                  TabIndicatorItem(label: "Paket 1"),
                                  TabIndicatorItem(label: "Paket 2"),
                                  TabIndicatorItem(label: "Paket 3"),
                                ],
                                indicator: UnderlineTabIndicator(
                                  borderSide: BorderSide(
                                    width: 4,
                                    color: AppColors.primary1,
                                  ),
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(4),
                                  ),
                                ),
                              ),
                              const SizedBox(height: AppDimens.paddingMedium),
                              SizedBox(
                                height: height,
                                child: const TabBarView(
                                  children: [
                                    CeremonyPackage(),
                                    CeremonyPackage(),
                                    CeremonyPackage(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.4,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CeremonyPackage extends StatelessWidget {
  const CeremonyPackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.paddingMedium),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CeremonyPricePackage(),
          SizedBox(
            height: AppDimens.paddingLarge,
          ),
          CeremonyDescriptionPackage(),
        ],
      ),
    );
  }
}

class CeremonyDescriptionPackage extends StatelessWidget {
  const CeremonyDescriptionPackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          locales?.nextWithoutPackage ?? '',
          style: const TextStyle(
            fontSize: AppFontSizes.bodyLarge,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: AppDimens.paddingSmall,
        ),
        Text(
          """Lorem ipsum odor amet, consectetuer adipiscing elit. Himenaeos nascetur vulputate praesent aliquam ante pharetra. Enim justo dapibus porttitor porta dolor.
    
    Volutpat duis nascetur elementum hac massa tincidunt suscipit odio. Elit duis facilisi sapien interdum nam. Senectus adipiscing ad euismod lacinia orci sociosqu eget fusce.
    """,
          style: TextStyle(
            fontSize: AppFontSizes.bodySmall,
            color: AppColors.primaryText.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}

class CeremonyPricePackage extends StatelessWidget {
  const CeremonyPricePackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          locales?.packagePrice ?? '',
          style: const TextStyle(
            fontSize: AppFontSizes.bodyLarge,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: AppDimens.paddingSmall,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: AppDimens.paddingSmall,
            horizontal: AppDimens.marginLarge,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary1.withOpacity(0.3),
            borderRadius: BorderRadius.circular(
              100,
            ),
            border: Border.all(
              color: AppColors.primary1,
              width: 2,
            ),
          ),
          child: const Text(
            "Rp 2.500.000",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class TabIndicatorItem extends StatelessWidget {
  const TabIndicatorItem({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.2,
      child: Tab(text: label),
    );
  }
}

class TitleAndDescriptionCeremony extends StatelessWidget {
  const TitleAndDescriptionCeremony({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "🛕 Upacara Ngaben",
          style: TextStyle(
            fontSize: AppFontSizes.titleMediumLarge,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: AppDimens.paddingSmall,
        ),
        Text(
          """Lorem ipsum odor amet, consectetuer adipiscing elit. Himenaeos nascetur vulputate praesent aliquam ante pharetra. Enim justo dapibus porttitor porta dolor.

    Volutpat duis nascetur elementum hac massa tincidunt suscipit odio. Elit duis facilisi sapien interdum nam. Senectus adipiscing ad euismod lacinia orci sociosqu eget fusce.""",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: AppFontSizes.bodySmall,
            color: AppColors.primaryText.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}

class MainThumbnail extends StatelessWidget {
  const MainThumbnail({
    super.key,
    required this.thumbnailUrl,
  });

  final String thumbnailUrl;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return CachedNetworkImage(
      imageUrl: thumbnailUrl,
      fit: BoxFit.cover,
      height: height * 0.25,
      width: width,
      progressIndicatorBuilder: (context, url, downloadProgress) {
        return Shimmer.fromColors(
          baseColor: AppColors.gray2.withOpacity(0.6),
          highlightColor: AppColors.light1,
          child: const SizedBox(),
        );
      },
      errorWidget: (context, url, error) => const SizedBox(),
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
