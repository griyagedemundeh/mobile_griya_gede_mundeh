import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/config/app_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/storage_key.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/loading_screen.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/modal/primary_alert_dialog.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/toast/primary_toast.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/documentation/response/ceremony_documentation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/package/ceremony_package.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/response/ceremony.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/request/consultation/ceremony/ceremony_consultation_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/request/consultation/ticket/ceremony/ceremony_consultation_ticket_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/consultation/ticket/ceremony/ceremony_consultation_ticket.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/ceremony/ceremony_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/consultation/consultation_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/controller/ceremony_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/consultation_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/ceremony_package_item.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/main_thumbnail.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/selected_buttons_package.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/tab_indicator_item.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/title_description_ceremony.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/controller/home_controller.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DetailCeremonyScreen extends HookConsumerWidget {
  const DetailCeremonyScreen({super.key, this.id});

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);
    final isOpened = useState(false);

    final HomeController homeController = HomeController(
      authRepository: AuthRepository(),
    );

    final Auth? user = homeController.getUser();

    final CeremonyController ceremonyController = CeremonyController(
      ceremonyRepository: CeremonyRepository(),
      consultationRepository: ConsultationRepository(),
    );

    Future<ApiBaseResponse<Ceremony?>?> getCeremony() async {
      final response = await ceremonyController.getCeremony(id: id ?? 0);

      return response;
    }

    final ceremonyResponse =
        useQuery<ApiBaseResponse<Ceremony?>?, ApiBaseResponse<dynamic>>(
      ['ceremony_$id'],
      getCeremony,
    );

    final Ceremony? ceremony = ceremonyResponse.data?.data as Ceremony?;

    Future<ApiBaseResponse<List<CeremonyPackage?>?>?>
        getCeremonyPackages() async {
      final response = await ceremonyController.getCeremonyPackages(
        ceremonyServiceId: id ?? 0,
      );

      return response;
    }

    final ceremonyPackagesResponse = useQuery<
        ApiBaseResponse<List<CeremonyPackage?>?>?, ApiBaseResponse<dynamic>>(
      ['ceremonyPackages_$id'],
      getCeremonyPackages,
    );

    final ceremonyPackages =
        ceremonyPackagesResponse.data?.data as List<CeremonyPackage?>?;

    Future<ApiBaseResponse<CeremonyDocumentation?>?>
        getCeremonyDocumentations() async {
      final response = await ceremonyController.getCeremonyDocumentations(
        ceremonyServiceId: id ?? 0,
      );

      return response;
    }

    final ceremonyDocumentationsResponse = useQuery<
        ApiBaseResponse<CeremonyDocumentation?>?, ApiBaseResponse<dynamic>>(
      ['ceremonyDocumentations_$id'],
      getCeremonyDocumentations,
    );

    final ceremonyDocumenations =
        ceremonyDocumentationsResponse.data?.data as CeremonyDocumentation?;

    final selectedCeremonyPackage = useState<CeremonyPackage?>(
        (ceremonyPackages?.isNotEmpty ?? false) ? ceremonyPackages![0] : null);

    final tabController = useTabController(
      initialLength: ceremonyPackages?.length ?? 0,
      keys: [
        ceremonyPackagesResponse.isLoading,
        ceremonyPackages?.length ?? 0,
      ],
    );

    useEffect(() {
      tabController.addListener(() {
        selectedCeremonyPackage.value = ceremonyPackages?[tabController.index];
      });
      return null;
    }, [tabController]);

    final isLoading = useState<bool>(false);
    final isWithoutPackage = useState<bool>(false);

    final SupabaseClient supabase = AppConfig().supabase();
    final SupabaseQueryBuilder dbConsult = supabase.from(
      StorageKey.supabaseConsultCeremony,
    );

    Future<void> createConsultation({
      required CeremonyConsultationTicket consultationTicket,
    }) async {
      isLoading.value = true;
      try {
        final CeremonyConsultationRequest consultationRequest =
            CeremonyConsultationRequest(
          ceremonyIconUrl: ceremonyDocumenations?.photo ?? '',
          ceremonyName: ceremony?.title ?? '',
          ceremonyServiceId: ceremony?.id ?? 0,
          consultationId: consultationTicket.id,
          status: 'onGoing',
          userId: user?.id ?? 0,
          userName: user?.fullName ?? '',
          userPhoto: user?.avatarUrl ?? '',
          ceremonyPackageName: isWithoutPackage.value == true
              ? null
              : selectedCeremonyPackage.value?.name,
          ceremonyPackageId: isWithoutPackage.value == true
              ? null
              : selectedCeremonyPackage.value?.id,
          createdAt: DateTime.now().toIso8601String(),
        );

        final dataConsult = await dbConsult
            .select()
            .eq('consultationId', consultationTicket.id);

        if (dataConsult.toString() == '[]') {
          dbConsult.insert(consultationRequest.toJson()).then((val) {
            isLoading.value = false;
            PrimaryNavigation.pushFromRight(
              context,
              page: ConsultationCeremonyScreen(
                id: consultationTicket.id,
                ceremony: ceremony,
                isNewConsult: true,
                ceremonyPackage: isWithoutPackage.value == true
                    ? null
                    : selectedCeremonyPackage.value,
              ),
            );
          });
        } else {
          isLoading.value = false;
          PrimaryNavigation.pushFromRight(
            context,
            page: ConsultationCeremonyScreen(
              id: consultationTicket.id,
              isNewConsult: true,
              ceremony: ceremony,
              ceremonyPackage: isWithoutPackage.value == true
                  ? null
                  : selectedCeremonyPackage.value,
            ),
          );
        }
      } on PostgrestException catch (error) {
        isLoading.value = false;
        log("ERROR CREATE CONSULTATION --->>> ${error.message}");
        PrimaryToast.error(message: error.message);
      } catch (err) {
        isLoading.value = false;
        log('ERORR ${err.toString()}');
        PrimaryToast.error(message: err.toString());
      }
    }

    final createConsultationMutation = useMutation<
        ApiBaseResponse<CeremonyConsultationTicket>,
        dynamic,
        CeremonyConsultationTicketRequest,
        void>(
      (request) async {
        final response =
            await ceremonyController.createConsultation(request: request);

        await createConsultation(
          consultationTicket: response.data as CeremonyConsultationTicket,
        );

        return response;
      },
      onSuccess: (response, variables, _) {
        isLoading.value = false;
      },
      onError: (error, variables, _) {
        isLoading.value = false;

        // if (error.message != null) {
        //   for (var message in error.message) {
        //     PrimaryToast.error(message: message);
        //   }
        // }
      },
    );

    Future createConsultationTicket({bool? isWithoutPackageId}) async {
      isWithoutPackage.value = isWithoutPackageId ?? false;

      final data = CeremonyConsultationTicketRequest(
        ceremonyServiceId: ceremony?.id ?? 0,
        ceremonyServiceName: ceremony?.title ?? '',
        memberId: user?.id ?? 0,
        ceremonyServicePackageId: isWithoutPackage.value == true
            ? null
            : selectedCeremonyPackage.value?.id,
      );

      isLoading.value = true;

      await createConsultationMutation.mutate(data);

      createConsultationMutation.reset();
    }

    showAlertConfirmation({bool? isWithoutPackage}) {
      PrimaryAlertDialog(
        title: Text(
          isWithoutPackage == true
              ? 'Apakah yakin lanjut tanpa paket?'
              : locales?.sureSelectPackage(
                      selectedCeremonyPackage.value?.name ?? 'Paket ini') ??
                  '',
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
                    label: locales?.back ?? '',
                    onTap: () {
                      Navigator.pop(context);
                    },
                    isMedium: true,
                    isOutline: true,
                  ),
                  const SizedBox(width: AppDimens.paddingMedium),
                  PrimaryButton(
                    label: locales?.veryConfident ?? '',
                    onTap: () async {
                      Navigator.pop(context);
                      await createConsultationTicket(
                        isWithoutPackageId: isWithoutPackage,
                      );
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
      bottomNavigationBar: Builder(builder: (context) {
        if (isOpened.value && (ceremonyPackages?.isNotEmpty ?? false)) {
          return SelectedButtonsPackage(
            isLoading: isLoading.value,
            onTapButtonPrimary: () {
              if (ceremonyPackages?.isEmpty == true) {
                Navigator.pop(context);
                createConsultationTicket();

                return;
              }
              showAlertConfirmation();
            },
            onTapButtonSecondary: () {
              showAlertConfirmation(isWithoutPackage: true);
            },
          );
        }

        if (ceremonyPackages?.isEmpty == true) {
          return SelectedButtonsPackage(
            onTapButtonPrimary: () {
              showAlertConfirmation();
            },
          );
        }
        return const SizedBox();
      }),
      body: Stack(
        children: [
          Column(
            children: [
              MeshAppBar(
                title: locales?.detailCeremony ?? '',
              ),
              Builder(builder: (context) {
                if (ceremonyResponse.isLoading ||
                    ceremonyPackagesResponse.isLoading) {
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primary1,
                      ),
                    ),
                  );
                }

                if (ceremonyResponse.isError ||
                    ceremonyPackagesResponse.isError) {
                  return const DataEmpty();
                }

                if (ceremonyResponse.isSuccess &&
                    ceremonyResponse.data?.data != null) {
                  return Expanded(
                    child: SlidingUpPanel(
                      minHeight: height *
                          (ceremonyPackages?.isNotEmpty == true ? 0.6 : 0.45),
                      maxHeight: height,
                      parallaxEnabled: true,
                      backdropEnabled: true,
                      onPanelOpened: () {
                        if (ceremonyPackages != []) {
                          isOpened.value = true;
                          return;
                        }

                        isOpened.value = false;
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
                              color: AppColors.dark1.withOpacity(0.75),
                              child: Column(
                                children: [
                                  MainThumbnail(
                                    // thumbnailUrl:
                                    //     (ceremonyDocumenations?.isNotEmpty == true)
                                    //         ? ceremonyDocumenations?.first?.photo ??
                                    //             AppImages.dummyCeremony
                                    //         : AppImages.dummyCeremony,
                                    thumbnailUrl:
                                        ceremonyDocumenations?.photo ??
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
                            Builder(builder: (context) {
                              if (ceremonyPackages != null &&
                                  ceremonyPackages.isNotEmpty) {
                                return DefaultTabController(
                                  length: tabController.length,
                                  child: Column(
                                    children: [
                                      TabBar(
                                        controller: tabController,
                                        labelColor: AppColors.dark1,
                                        tabAlignment: TabAlignment.center,
                                        isScrollable: true,
                                        dividerColor: AppColors.gray1,
                                        automaticIndicatorColorAdjustment: true,
                                        tabs: List.generate(
                                            ceremonyPackages.length, (index) {
                                          return TabIndicatorItem(
                                            label:
                                                ceremonyPackages[index]?.name ??
                                                    '-', // Safe check
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
                                          controller: tabController,
                                          children: List.generate(
                                              ceremonyPackages.length, (index) {
                                            final package =
                                                ceremonyPackages[index];

                                            return Column(
                                              children: [
                                                CeremonyPackageItem(
                                                  price: package?.price ?? 0,
                                                  description:
                                                      package?.description ??
                                                          '-',
                                                ),
                                                Visibility(
                                                  visible:
                                                      isOpened.value == false,
                                                  child: SelectedButtonsPackage(
                                                    onTapButtonPrimary: () {
                                                      selectedCeremonyPackage
                                                          .value = package;
                                                      showAlertConfirmation();
                                                    },
                                                    onTapButtonSecondary: () {
                                                      showAlertConfirmation(
                                                          isWithoutPackage:
                                                              true);
                                                    },
                                                  ),
                                                ),
                                              ],
                                            );
                                          }),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }

                              return DataEmpty(
                                message:
                                    "Tidak ada paket untuk ${ceremony?.title ?? 'Upacara Agama ini'}!",
                              );
                            }),
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
          LoadingScreen(isLoading: isLoading),
        ],
      ),
    );
  }
}
