import 'package:flutter/material.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/input/search_input.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/ceremony_card.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_top_bar_with_child.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/history/ceremony_history.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/ceremony/history/ceremony_history_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony_history/controller/ceremony_history_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony_history/screens/detail_ceremony_history_screen.dart';

class CeremonyHistoriesScreen extends HookConsumerWidget {
  const CeremonyHistoriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locales = AppLocalizations.of(context);

    final CeremonyHistoryController ceremonyHistoryController =
        CeremonyHistoryController(
      ceremonyHistoryRepository: CeremonyHistoryRepository(),
    );

    Future<ApiBaseResponse<List<CeremonyHistory?>?>?>
        getListCeremonyHistory() async {
      final response = await ceremonyHistoryController.getListCeremonyHistory(
        request: ListDataParams(
          page: 1,
          limit: 100,
        ),
      );

      return response;
    }

    final ceremonyHistoryResponse = useQuery<
        ApiBaseResponse<List<CeremonyHistory?>?>?,
        // ApiBaseResponse<dynamic>
        dynamic>(
      ['ceremony_histories'],
      getListCeremonyHistory,
    );

    final List<CeremonyHistory?>? ceremonyHistories =
        ceremonyHistoryResponse.data?.data as List<CeremonyHistory?>?;

    return Scaffold(
      body: Column(
        children: [
          MeshTopBarWithChild(
            title: locales?.ceremonyHistory ?? '',
            isWihoutBack: true,
            child: SearchInput(
              placeHolder: locales?.searchCeremonyHistory ?? '',
            ),
          ),
          Expanded(
            child: Builder(
              builder: (context) {
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
                    (ceremonyHistories?.length ?? 0) > 0) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      ceremonyHistoryResponse.refetch();
                    },
                    color: AppColors.primary1,
                    backgroundColor: Colors.white,
                    child: ListView.separated(
                      padding: const EdgeInsets.all(
                        AppDimens.paddingMedium,
                      ),
                      itemCount: ceremonyHistories?.length ?? 0,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: AppDimens.paddingMedium,
                        );
                      },
                      itemBuilder: (context, index) {
                        final ceremonyHistory = ceremonyHistories?[index];
                        return CermonyCard(
                          ceremonyTitle: ceremonyHistory?.title ?? '-',
                          ceremonyType: ceremonyHistory?.packageName ?? '-',
                          date:
                              ceremonyHistory?.ceremonyDate.toIso8601String() ??
                                  '',
                          location: ceremonyHistory?.ceremonyAddress ?? '-',
                          status: ceremonyHistory?.status ?? '-',
                          onTap: () {
                            PrimaryNavigation.pushFromRight(
                              context,
                              page: DetailCeremonyHistoryScreen(
                                id: ceremonyHistory?.id ?? 0,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  );
                }

                return const DataEmpty();
              },
            ),
          ),
        ],
      ),
    );
  }
}
