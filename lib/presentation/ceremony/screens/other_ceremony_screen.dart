import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/icon_rounded_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/response/ceremony.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/ceremony/ceremony_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/detail_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/controller/home_controller.dart';
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

    final HomeController homeController = HomeController(
      ceremonyRepository: CeremonyRepository(),
    );

    Future<ApiBaseResponse<List<Ceremony?>?>?> getCeremonies() async {
      final response = await homeController.getCeremonies(
        listDataParams: ListDataParams(
          page: 1,
          limit: 100,
        ),
      );

      return response;
    }

    final ceremonies =
        useQuery<ApiBaseResponse<List<Ceremony?>?>?, ApiBaseResponse<dynamic>>(
      ['ceremonies_other'],
      getCeremonies,
    );

    final dataCeremonies = ceremonies.data?.data as List<Ceremony?>?;

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
            child: Builder(builder: (context) {
              if (ceremonies.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary1,
                  ),
                );
              }

              if (ceremonies.isError) {
                return const DataEmpty();
              }

              if ((dataCeremonies?.isNotEmpty ?? false) &&
                  ceremonies.isSuccess) {
                return ListView.separated(
                  controller: scrollController,
                  padding: const EdgeInsets.all(
                    AppDimens.paddingMedium,
                  ),
                  itemCount: dataCeremonies?.length ?? 0,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: AppDimens.paddingMedium,
                    );
                  },
                  itemBuilder: (context, index) {
                    final ceremony = dataCeremonies?[index];

                    return SizedBox(
                      height: height * 0.22,
                      width: width,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            child: Container(
                              color: AppColors.dark1.withOpacity(0.8),
                              child: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.darken,
                                ),
                                child: CachedNetworkImage(
                                  imageUrl: (ceremony?.ceremonyDocumentation !=
                                              null &&
                                          ceremony!.ceremonyDocumentation!
                                              .isNotEmpty)
                                      ? ceremony.ceremonyDocumentation![0]
                                              ?.photo ??
                                          AppImages.dummyCeremony
                                      : AppImages.dummyCeremony,
                                  fit: BoxFit.cover,
                                  height: height * 0.3,
                                  width: width,
                                  progressIndicatorBuilder:
                                      (context, url, downloadProgress) {
                                    return Shimmer.fromColors(
                                      baseColor:
                                          AppColors.gray2.withOpacity(0.6),
                                      highlightColor: AppColors.light1,
                                      child: const SizedBox(),
                                    );
                                  },
                                  errorWidget: (context, url, error) =>
                                      const SizedBox(),
                                ),
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
                                  ceremony?.title ?? '-',
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
                                  ceremony?.description ?? '-',
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
                                padding: const EdgeInsets.all(
                                    AppDimens.marginMedium),
                                child: PrimaryButton(
                                  label: locales?.detailCeremony ?? '',
                                  isOutline: true,
                                  isFullRounded: true,
                                  onTap: () {
                                    PrimaryNavigation.pushFromRight(
                                      context,
                                      page: DetailCeremonyScreen(
                                        id: ceremony?.id ?? 0,
                                      ),
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
                );
              }

              return const DataEmpty();
            }),
          ),
        ],
      ),
    );
  }
}
