import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/input/text_input.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/chip_status.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_top_bar_with_child.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/history/ceremony_history.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/ceremony/history/ceremony_history_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/consultation_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/detail_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony_history/controller/ceremony_history_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/transaction/screens/detail_transaction_screen.dart';
import 'package:mobile_griya_gede_mundeh/utils/index.dart';

class DetailCeremonyHistoryScreen extends HookConsumerWidget {
  const DetailCeremonyHistoryScreen({super.key, this.id});

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);

    final CeremonyHistoryController ceremonyHistoryController =
        CeremonyHistoryController(
      ceremonyHistoryRepository: CeremonyHistoryRepository(),
    );

    Future<ApiBaseResponse<CeremonyHistory?>?> getCeremonyHistory() async {
      final response = await ceremonyHistoryController.getDetailCeremonyHistory(
        id: id ?? 0,
      );

      return response;
    }

    final ceremonyHistoryResponse =
        useQuery<ApiBaseResponse<CeremonyHistory?>?, ApiBaseResponse<dynamic>>(
      ['ceremony_history_$id'],
      getCeremonyHistory,
    );

    final CeremonyHistory? ceremonyHistory =
        ceremonyHistoryResponse.data?.data as CeremonyHistory?;

    // Hook for managing countdown state
    final countdown = useState<String>('Calculating...');

    var statusColor = AppColors.primary1;

    switch (ceremonyHistory?.status.toLowerCase()) {
      case 'pending':
        statusColor = AppColors.primary1;
        break;
      case 'success':
        statusColor = AppColors.green;
        break;
      case 'cancel':
        statusColor = AppColors.red;
        break;
      default:
        statusColor = AppColors.primary1;
    }

    // Timer setup
    useEffect(() {
      // Parse the date
      DateTime targetDate = DateTime.parse(
          ceremonyHistory?.ceremonyDate.toIso8601String() ??
              DateTime.now().toIso8601String());
      Timer? timer;

      void updateCountdown() {
        final now = DateTime.now();
        final difference = targetDate.difference(now);

        if (difference.isNegative) {
          countdown.value = 'Event has passed';
          timer?.cancel();
        } else {
          final days = difference.inDays;
          final hours = difference.inHours % 24;
          final minutes = difference.inMinutes % 60;
          final seconds = difference.inSeconds % 60;

          countdown.value =
              '$days hari $hours jam $minutes menit $seconds detik';
        }
      }

      // Update countdown immediately and then every second
      updateCountdown();
      timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
        updateCountdown();
      });

      return () => timer?.cancel(); // Cleanup on dispose
    }, [ceremonyHistory?.ceremonyDate]);

    return Scaffold(
      bottomNavigationBar: Container(
        height: height * 0.1,
        padding: const EdgeInsets.all(AppDimens.paddingMedium),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: AppColors.lightgray2.withOpacity(0.5),
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            MaterialButton(
              onPressed: () {},
              minWidth: 0,
              padding: EdgeInsets.zero,
              child: Container(
                padding: const EdgeInsets.all(
                  AppDimens.paddingSmall,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primary1,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(
                    AppDimens.paddingSmall,
                  ),
                ),
                child: const Icon(
                  Icons.more_horiz_rounded,
                  color: AppColors.primary1,
                ),
              ),
            ),
            const SizedBox(
              width: AppDimens.paddingMedium,
            ),
            Visibility(
              visible: ceremonyHistory?.ceremonyInvoice?.id != null,
              child: SecondaryButton(
                label: locales?.detailTransaction ?? '',
                onTap: () {
                  PrimaryNavigation.pushFromRight(
                    context,
                    page: DetailTransactionScreen(
                      invoiceId: ceremonyHistory?.ceremonyInvoice?.id,
                    ),
                  );
                },
                isMedium: true,
                isOutline: true,
              ),
            ),
            const SizedBox(
              width: AppDimens.paddingMedium,
            ),
            Visibility(
              visible: ceremonyHistory?.consultationId != null,
              child: PrimaryButton(
                label: locales?.consultation ?? '',
                onTap: () {
                  PrimaryNavigation.pushFromRight(
                    context,
                    page: ConsultationCeremonyScreen(
                      id: ceremonyHistory?.consultationId,
                    ),
                  );
                },
                isMedium: true,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          MeshTopBarWithChild(
            title: ceremonyHistory?.title ?? '-',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ChipStatus(
                  label: ceremonyHistory?.status ?? '-',
                  color: statusColor,
                  isBig: true,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "${formatDateOnly(ceremonyHistory?.ceremonyDate.toIso8601String() ?? DateTime.now().toIso8601String())} - ${formatTimeOnly(ceremonyHistory?.ceremonyDate.toIso8601String() ?? DateTime.now().toIso8601String())}",
                      style: const TextStyle(
                        fontSize: AppFontSizes.bodySmall,
                      ),
                    ),
                    const SizedBox(
                      height: AppDimens.paddingMicro,
                    ),
                    Text(
                      countdown.value,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Builder(builder: (context) {
              if (ceremonyHistoryResponse.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary1,
                  ),
                );
              }

              if (ceremonyHistoryResponse.isError) {
                return const DataEmpty();
              }

              if (!ceremonyHistoryResponse.isLoading &&
                  ceremonyHistory != null) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(
                    AppDimens.marginMedium,
                  ),
                  child: Column(
                    children: [
                      TextInput(
                        controller:
                            TextEditingController(text: ceremonyHistory.title),
                        label: "Nama Upacara",
                        isEnabled: false,
                      ),
                      const SizedBox(
                        height: AppDimens.paddingMedium,
                      ),
                      TextInput(
                        controller: TextEditingController(
                            text: ceremonyHistory.ceremonyAddress),
                        label: "Lokasi",
                        maxLines: 5,
                        isEnabled: false,
                      ),
                      const SizedBox(
                        height: AppDimens.paddingMedium,
                      ),
                      TextInput(
                        controller: TextEditingController(
                            text: ceremonyHistory.ceremonyAdmin?.user.fullName),
                        label: "Pengelola",
                        isEnabled: false,
                      ),
                      const SizedBox(
                        height: AppDimens.paddingMedium,
                      ),
                      Visibility(
                        visible: ceremonyHistory.note != null,
                        child: TextInput(
                          controller: TextEditingController(
                            text: ceremonyHistory.note,
                          ),
                          label: "Catatan",
                          isEnabled: false,
                          maxLines: 5,
                        ),
                      ),
                      const SizedBox(
                        height: AppDimens.paddingMedium,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Deskripsi Upacara",
                            style: TextStyle(
                              fontSize: AppFontSizes.bodySmall,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: AppDimens.marginSmall),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.gray1.withOpacity(0.35),
                              border: Border.all(
                                width: 1,
                                color: AppColors.gray1,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(AppDimens.paddingSmall),
                              ),
                            ),
                            child: HtmlWidget(
                              ceremonyHistory.description,
                              textStyle: const TextStyle(
                                color: AppColors.gray1,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
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
