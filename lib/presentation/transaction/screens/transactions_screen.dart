import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/text_secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/input/search_input.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/chip_status.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_top_bar_with_child.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/models/transaction/history/invoice_history.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/transaction/transaction_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/transaction/controller/transaction_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/transaction/screens/detail_transaction_screen.dart';
import 'package:mobile_griya_gede_mundeh/utils/index.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TransactionsScreen extends HookConsumerWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locales = AppLocalizations.of(context);

    final TransactionController transactionController =
        TransactionController(transactionRepository: TransactionRepository());

    Future<ApiBaseResponse<List<InvoiceHistory?>?>?> getListInvoice() async {
      final response = await transactionController.getListInvoice(
        request: ListDataParams(
          page: 1,
          limit: 100,
        ),
      );

      return response;
    }

    final invoiceResponse = useQuery<ApiBaseResponse<List<InvoiceHistory?>?>?,
        ApiBaseResponse<dynamic>>(
      ['invoices'],
      getListInvoice,
    );

    final List<InvoiceHistory?>? invoices =
        invoiceResponse.data?.data as List<InvoiceHistory?>?;

    return Scaffold(
      body: Column(
        children: [
          MeshTopBarWithChild(
            title: locales?.transactionHistory ?? '',
            isWihoutBack: true,
            child: SearchInput(
              placeHolder: locales?.searchTransaction,
            ),
          ),
          Builder(
            builder: (context) {
              if (invoiceResponse.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary1,
                  ),
                );
              }

              if (invoiceResponse.isError) {
                return const DataEmpty();
              }

              if (!invoiceResponse.isLoading && (invoices?.length ?? 0) > 0) {
                return Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      invoiceResponse.refetch();
                    },
                    color: AppColors.primary1,
                    backgroundColor: Colors.white,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppDimens.paddingSmall,
                      ),
                      itemCount: invoices?.length ?? 0,
                      separatorBuilder: (context, index) {
                        return const Divider(
                          color: AppColors.gray1,
                          height: 1,
                          thickness: 1,
                        );
                      },
                      itemBuilder: (context, index) {
                        final InvoiceHistory? invoiceHistory = invoices?[index];

                        return TransactionHistoryItem(
                          onTap: () {
                            PrimaryNavigation.pushFromRight(
                              context,
                              page: DetailTransactionScreen(
                                invoiceId: invoiceHistory?.id,
                              ),
                            );
                          },
                          title: invoiceHistory?.invoiceCeremonyHistory.title ??
                              '-',
                          price:
                              formatCurrency(invoiceHistory?.totalPrice ?? 0),
                          status: invoiceHistory?.status ?? '-',
                          thumbnailUrl: invoiceHistory
                                  ?.invoiceCeremonyHistory
                                  .ceremonyService
                                  .ceremonyDocumentation[0]
                                  .photo ??
                              '',
                        );
                      },
                    ),
                  ),
                );
              }

              return const DataEmpty();
            },
          ),
        ],
      ),
    );
  }
}

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.onTap,
    required this.thumbnailUrl,
    required this.title,
    required this.price,
    required this.status,
  });

  final VoidCallback onTap;
  final String thumbnailUrl;
  final String title;
  final String price;
  final String status;

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

    return MaterialButton(
      onPressed: onTap,
      padding: const EdgeInsets.all(
        AppDimens.paddingMedium,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: AppDimens.paddingSmall,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: thumbnailUrl,
                fit: BoxFit.cover,
                height: AppDimens.big,
                width: AppDimens.big,
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: AppDimens.paddingSmall,
                ),
                Text(
                  price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.gray2,
                    fontSize: AppFontSizes.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: AppDimens.paddingSmall,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChipStatus(
                  color: status.toLowerCase() == "success"
                      ? AppColors.green
                      : status.toLowerCase() == "pending"
                          ? AppColors.primary1
                          : AppColors.red,
                  label: status,
                ),
                TextSecondaryButton(
                  label: locales?.seeDetail ?? '',
                  onTap: onTap,
                  fontSize: AppFontSizes.bodyMedium,
                  icon: const Icon(
                    Icons.chevron_right_rounded,
                    color: AppColors.gray2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
