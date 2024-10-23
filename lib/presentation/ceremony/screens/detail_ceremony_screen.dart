import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/bottom_sheet/address_sheet.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/modal/primary_alert_dialog.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/package/ceremony_package.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/response/ceremony.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/ceremony/ceremony_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/controller/ceremony_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/consultation_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/ceremony_package_item.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/main_thumbnail.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/mini_thumbnail.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/selected_buttons_package.dart';
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

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);
    final isOpened = useState(false);

    final CeremonyController ceremonyController =
        CeremonyController(ceremonyRepository: CeremonyRepository());

    Future<ApiBaseResponse<Ceremony?>?> getCeremony() async {
      final response = await ceremonyController.getCeremony(id: id ?? 0);

      return response;
    }

    final ceremonyResponse =
        useQuery<ApiBaseResponse<Ceremony?>?, ApiBaseResponse<dynamic>>(
            ['ceremony'], getCeremony);

    final Ceremony? ceremony = ceremonyResponse.data?.data as Ceremony?;

    Future<ApiBaseResponse<List<CeremonyPackage?>?>?>
        getCeremonyPackages() async {
      final response = await ceremonyController.getCeremonyPackages(
        ceremonyServiceId: id ?? 0,
      );

      return response;
    }

    final ceremonyPackages = useQuery<ApiBaseResponse<List<CeremonyPackage?>?>?,
        ApiBaseResponse<dynamic>>(['ceremonyPackages'], getCeremonyPackages);

    final dataCeremonyPackages =
        ceremonyPackages.data?.data as List<CeremonyPackage?>?;

    // final List<ThumbnailCeremony> thumbnails = [
    //   ThumbnailCeremony(
    //     id: "1",
    //     thumbnailUrl:
    //         "https://awsimages.detik.net.id/community/media/visual/2022/08/02/melihat-prosesi-ngaben-massal-di-bali-2_169.jpeg?w=600&q=90",
    //   ),
    //   ThumbnailCeremony(
    //     id: "2",
    //     thumbnailUrl:
    //         "https://firstlomboktour.com/wp-content/uploads/2021/12/ngaden-1024x673.jpg.webp",
    //   ),
    //   ThumbnailCeremony(
    //     id: "3",
    //     thumbnailUrl:
    //         "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1586262431/1200px-Ngaben_Cremation_vih3yt.jpg",
    //   ),
    //   ThumbnailCeremony(
    //     id: "4",
    //     thumbnailUrl:
    //         "https://kamboja.co.id/wp-content/uploads/2021/06/biaya-ngaben-di-bali.jpg",
    //   ),
    //   ThumbnailCeremony(
    //     id: "5",
    //     thumbnailUrl:
    //         "https://www.baliviralnews.com/wp-content/uploads/2020/11/Ngaben-Bikul-13.jpg",
    //   ),
    //   ThumbnailCeremony(
    //     id: "6",
    //     thumbnailUrl:
    //         "https://osccdn.medcom.id/images/content/2022/11/30/bd2176d03953542cc52af2b46a761b70.jpg",
    //   ),
    // ];

    // final List<Widget> miniThumbnails =
    //     List.generate(thumbnails.length, (index) {
    //   if (index == 0) {
    //     return const SizedBox();
    //   }

    //   if (index > 3) {
    //     return const SizedBox();
    //   }

    //   return MiniThumbnail(
    //     index: index,
    //     thumbNailUrl: thumbnails[index].thumbnailUrl,
    //   );
    // });

    showAddressSheet() {
      AddressSheet.showSheet(context);
    }

    showAlertConfirmation() {
      PrimaryAlertDialog(
        title: Text(
          locales?.sureSelectPackage("Paket 2") ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        content: SizedBox(
          height: height * 0.15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                locales?.makeSurePackage ?? '',
                style: const TextStyle(
                  fontSize: AppFontSizes.bodySmall,
                  color: AppColors.gray2,
                ),
              ),
              Row(
                children: [
                  SecondaryButton(
                    label: locales?.consultFirst ?? '',
                    onTap: () {
                      PrimaryNavigation.pushFromRight(
                        context,
                        page: const ConsultationCeremonyScreen(),
                      );
                    },
                    isMedium: true,
                    isOutline: true,
                  ),
                  const SizedBox(width: AppDimens.paddingMedium),
                  PrimaryButton(
                    label: locales?.veryConfident ?? '',
                    onTap: () {
                      showAddressSheet();
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
        child: SelectedButtonsPackage(
          onTapButtonPrimary: () {
            showAlertConfirmation();
          },
          onTapButtonSecondary: () {},
        ),
      ),
      body: Column(
        children: [
          MeshAppBar(
            title: locales?.detailCeremony ?? '',
          ),
          Builder(builder: (context) {
            if (ceremonyResponse.isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary1,
                ),
              );
            }

            if (ceremonyResponse.isError) {
              return const DataEmpty();
            }

            if (ceremonyResponse.isSuccess &&
                ceremonyResponse.data?.data != null) {
              return Expanded(
                child: SlidingUpPanel(
                  minHeight: height * 0.6,
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
                                thumbnailUrl: ceremony
                                        ?.ceremonyDocumentation?[0]?.photo ??
                                    AppImages.dummyCeremony,
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.symmetric(
                              //     vertical: AppDimens.paddingMedium,
                              //     horizontal: AppDimens.paddingLarge,
                              //   ),
                              //   child: Row(
                              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //     children: miniThumbnails,
                              //   ),
                              // ),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppDimens.paddingMedium,
                          ),
                          child: TitleAndDescriptionCeremony(
                            title: ceremony?.title ?? '-',
                            description: ceremony?.description ?? '-',
                          ),
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
                              length: dataCeremonyPackages?.length ?? 0,
                              child: Column(
                                children: [
                                  TabBar(
                                    labelColor: AppColors.dark1,
                                    tabAlignment: TabAlignment.center,
                                    isScrollable: true,
                                    dividerColor: AppColors.gray1,
                                    automaticIndicatorColorAdjustment: true,
                                    tabs: List.generate(
                                        dataCeremonyPackages?.length ?? 0,
                                        (index) {
                                      return TabIndicatorItem(
                                        label:
                                            "${dataCeremonyPackages?[index]?.name}", // Use the index to differentiate labels
                                      );
                                    }),
                                    indicator: const UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                        width: 4,
                                        color: AppColors.primary1,
                                      ),
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(4),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: AppDimens.paddingMedium,
                                  ),
                                  SizedBox(
                                    height: height,
                                    child: TabBarView(
                                      children: List.generate(
                                          dataCeremonyPackages?.length ?? 0,
                                          (index) {
                                        return const CeremonyPackageItem();
                                      }),
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
              );
            }

            return const DataEmpty();
          }),
        ],
      ),
    );
  }
}
