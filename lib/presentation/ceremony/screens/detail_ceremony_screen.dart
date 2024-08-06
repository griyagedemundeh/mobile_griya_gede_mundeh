import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/bottom_sheet/primary_bottom_sheet.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/modal/primary_alert_dialog.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/ceremony_package.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/main_thumbnail.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/mini_thumbnail.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/tab_indicator_item.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/title_description_ceremony.dart';
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

    showAlertDialog() {
      PrimaryAlertDialog(
        title: const Text(
          "Udah yakin pingin milih Paket 2?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        content: SizedBox(
          height: height * 0.15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Pastikan Anda sudah membaca semua deskripsi dengan teliti dan sesuai kebutuhan Anda!",
                style: TextStyle(
                  fontSize: AppFontSizes.bodySmall,
                  color: AppColors.gray2,
                ),
              ),
              Row(
                children: [
                  SecondaryButton(
                    label: "Konsultasi Dulu",
                    onTap: () {},
                    isMedium: true,
                    isOutline: true,
                  ),
                  const SizedBox(width: AppDimens.paddingMedium),
                  PrimaryButton(
                    label: "Yakin Banget",
                    onTap: () {
                      PrimaryBottomSheet.showModalBottom(context);
                    },
                    isMedium: true,
                  ),
                ],
              )
            ],
          ),
        ),
      ).showAnimatedDialog(context);
    }

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
                onTap: () {
                  showAlertDialog();
                },
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
