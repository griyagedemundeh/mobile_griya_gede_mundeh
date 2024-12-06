import 'dart:async';
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/modal/primary_alert_dialog.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/transaction/invoice/ceremony_service.dart';
import 'package:mobile_griya_gede_mundeh/data/models/transaction/invoice/invoice.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/transaction/transaction_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony_history/screens/detail_ceremony_history_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/transaction/controller/transaction_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/transaction/screens/payment_screen.dart';
import 'package:mobile_griya_gede_mundeh/utils/index.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TransactionItemData {
  final String label;
  final String data;

  TransactionItemData({required this.label, required this.data});
}

class DetailTransactionScreen extends HookConsumerWidget {
  const DetailTransactionScreen({super.key, this.invoiceId});

  final String? invoiceId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);

    final TransactionController transactionController =
        TransactionController(transactionRepository: TransactionRepository());

    Future<ApiBaseResponse<Invoice?>?> getDetailInvoice() async {
      final response = await transactionController.getDetailInvoice(
          invoiceId: invoiceId ?? '');

      return response;
    }

    final invoiceResponse =
        useQuery<ApiBaseResponse<Invoice?>?, ApiBaseResponse<dynamic>>(
      ['invoice_$invoiceId'],
      getDetailInvoice,
    );

    final Invoice? invoice = invoiceResponse.data?.data as Invoice?;

    showAlertConfirmation() {
      PrimaryAlertDialog(
        title: Text(
          locales?.payment ?? '',
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
                locales?.makeSurePayment ?? '',
                style: const TextStyle(
                  fontSize: AppFontSizes.bodySmall,
                  color: AppColors.gray2,
                ),
              ),
              PrimaryButton(
                label: locales?.okay ?? '',
                onTap: () async {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ).showAnimatedDialog(context);
    }

    return Scaffold(
      bottomNavigationBar: Builder(builder: (context) {
        if (invoiceResponse.isLoading) {
          return const SizedBox();
        }

        if (invoiceResponse.isError ||
            invoiceResponse.data?.data == null ||
            invoice?.status.toLowerCase() == 'cancel') {
          return const SizedBox();
        }

        return Container(
          height: height * 0.1,
          padding: const EdgeInsets.all(AppDimens.paddingMedium),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: AppColors.lightgray2.withOpacity(0.2),
                spreadRadius: 2,
              ),
            ],
          ),
          child: Builder(builder: (context) {
            if (invoice?.status.toLowerCase() == 'success') {
              return Row(
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
                  SecondaryButton(
                    label: locales?.consultation ?? '',
                    onTap: () {
                      Navigator.pop(context);
                    },
                    isMedium: true,
                    isOutline: true,
                  ),
                  const SizedBox(width: AppDimens.paddingMedium),
                  PrimaryButton(
                    label: locales?.detailCeremony ?? '',
                    onTap: () async {
                      PrimaryNavigation.pushFromRight(
                        context,
                        page: const DetailCeremonyHistoryScreen(),
                      );
                    },
                    isMedium: true,
                  ),
                ],
              );
            }

            if (invoice?.status.toLowerCase() == 'cancel') {
              return const SizedBox();
            }

            return Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(right: AppDimens.paddingMedium),
                  width: width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        locales?.totalBill ?? '',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        formatCurrency(invoice?.totalPrice ?? 0),
                        maxLines: 2,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppFontSizes.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                PrimaryButton(
                  label: locales?.payNow ?? '',
                  onTap: () {
                    if (invoice?.paymentUrl == null) {
                      showAlertConfirmation();
                      return;
                    }
                    PrimaryNavigation.pushFromRight(
                      context,
                      page: PaymentScreen(
                        paymentUrl: invoice?.paymentUrl ?? '',
                      ),
                    );
                  },
                  isMedium: true,
                  icon: SvgPicture.asset(
                    AppImages.icProtected,
                  ),
                ),
              ],
            );
          }),
        );
      }),
      body: Column(
        children: [
          MeshAppBar(
            title: locales?.detailOrder(
                    invoice?.invoiceCeremonyHistory.title ?? '-') ??
                '',
          ),
          Expanded(
            child: Builder(builder: (context) {
              if (invoiceResponse.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary1,
                  ),
                );
              }

              if (invoiceResponse.isError ||
                  invoiceResponse.data?.data == null) {
                return const DataEmpty();
              }

              return SingleChildScrollView(
                child: Column(
                  children: [
                    TransactionStatus(
                      id: invoice?.id ?? '-',
                      status: invoice?.status ?? '-',
                      createdDate: invoice?.createdAt,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppDimens.marginSmall,
                      ),
                      child: Divider(
                        color: AppColors.lightgray,
                        height: AppDimens.marginMedium,
                        thickness: AppDimens.marginMedium,
                      ),
                    ),
                    const SizedBox(
                      height: AppDimens.paddingMedium,
                    ),
                    TransactionSegmentedItem(
                      title: locales?.dateAndTimeCeremony ?? '',
                      transactionItemDatas: [
                        TransactionItemData(
                            label: locales?.date ?? '',
                            data: invoice
                                        ?.invoiceCeremonyHistory.ceremonyDate !=
                                    null
                                ? formatDateOnly(
                                    invoice!.invoiceCeremonyHistory.ceremonyDate
                                        .toIso8601String(),
                                  )
                                : '-'),
                        TransactionItemData(
                            label: locales?.time ?? '',
                            data: invoice
                                        ?.invoiceCeremonyHistory.ceremonyDate !=
                                    null
                                ? formatTimeOnly(
                                    invoice!.invoiceCeremonyHistory.ceremonyDate
                                        .toIso8601String(),
                                  )
                                : '-'),
                      ],
                    ),
                    const SizedBox(
                      height: AppDimens.paddingMedium,
                    ),
                    TransactionSegmentedItem(
                      title: locales?.locationCeremony ?? '',
                      transactionItemDatas: [
                        TransactionItemData(
                            label: locales?.residence ?? '',
                            data: invoice?.invoiceMember.user.fullName ?? '-'),
                        TransactionItemData(
                          label: locales?.address ?? '',
                          data:
                              invoice?.invoiceCeremonyHistory.ceremonyAddress ??
                                  '-',
                        ),
                      ],
                    ),
                    // Visibility(
                    //   visible: invoice?.invoiceCeremonyHistory.note != null,
                    //   child: Column(
                    //     children: [
                    //       const SizedBox(
                    //         height: AppDimens.paddingMedium,
                    //       ),
                    //       TransactionNote(
                    //         note: invoice?.invoiceCeremonyHistory.note,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(
                      height: AppDimens.paddingMedium,
                    ),
                    Visibility(
                      visible:
                          invoice?.invoiceCeremonyHistory.packageName != null,
                      child: TransactionDetailPackage(
                        description:
                            invoice?.invoiceCeremonyHistory.description ?? '',
                        iconUrl: invoice?.invoiceCeremonyHistory.ceremonyService
                            .ceremonyDocumentation[0].photo,
                        name: invoice?.invoiceCeremonyHistory.title ?? '',
                        price: invoice?.totalPrice ?? 0,
                      ),
                    ),
                    const SizedBox(
                      height: AppDimens.paddingMedium,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppDimens.marginSmall,
                      ),
                      child: Divider(
                        color: AppColors.lightgray,
                        height: AppDimens.marginMedium,
                        thickness: AppDimens.marginMedium,
                      ),
                    ),
                    const SizedBox(
                      height: AppDimens.paddingMedium,
                    ),
                    TransactionSegmentedItem(
                      title: locales?.transactionSummary ?? '',
                      transactionItemDatas: [
                        TransactionItemData(
                          label: locales?.totalPrice ?? '',
                          data: formatCurrency(invoice?.totalPrice ?? 0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

class TransactionDetailPackage extends StatelessWidget {
  const TransactionDetailPackage({
    super.key,
    this.name,
    this.price,
    this.iconUrl,
    this.description,
  });

  final String? name;
  final int? price;
  final String? iconUrl;
  final String? description;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);

    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingMedium,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            locales?.packageDetail ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: AppDimens.paddingMedium,
          ),
          Container(
            padding: const EdgeInsets.all(
              AppDimens.paddingMedium,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.gray1,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(
                AppDimens.paddingSmall,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: iconUrl ?? '',
                        fit: BoxFit.cover,
                        height: AppDimens.big,
                        width: AppDimens.big,
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
                    ),
                    const SizedBox(
                      width: AppDimens.paddingMedium,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.5,
                          child: Text(
                            name ?? '-',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: AppDimens.paddingMicro,
                        ),
                        Text(
                          formatCurrency(price ?? 0),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppDimens.marginSmall,
                  ),
                  child: Divider(
                    color: AppColors.gray1,
                    height: 1,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HtmlWidget(
                        description ?? '',
                      ),
                    ],
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

class TransactionNote extends StatelessWidget {
  const TransactionNote({
    super.key,
    this.note,
  });

  final String? note;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final locales = AppLocalizations.of(context);

    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingMedium,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            locales?.note ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: AppDimens.paddingMedium,
          ),
          Container(
              padding: const EdgeInsets.all(
                AppDimens.paddingMedium,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.gray1,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(
                  AppDimens.paddingSmall,
                ),
              ),
              child: Text(note ?? '-')),
        ],
      ),
    );
  }
}

class TransactionStatus extends HookConsumerWidget {
  const TransactionStatus({
    super.key,
    required this.id,
    required this.status,
    this.createdDate,
  });

  final String id;
  final String status;
  final DateTime? createdDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final locales = AppLocalizations.of(context);

    var statusBadge = "";

    switch (status.toLowerCase()) {
      case 'pending':
        statusBadge = AppImages.pendingTransaction;
        break;
      case 'success':
        statusBadge = AppImages.successTransaction;
        break;
      case 'cancel':
        statusBadge = AppImages.failedTransaction;
        break;
      default:
        statusBadge = AppImages.pendingTransaction;
    }

    // Calculate the exact 24-hour window
    final now = DateTime.now();
    final creationTime = createdDate ?? now;
    final twentyFourHoursLater = creationTime.add(const Duration(hours: 24));

    // Use a state to track the remaining duration
    final remainingTime = useState<Duration>(Duration.zero);

    // Use an effect to start the timer
    useEffect(() {
      if (status.toLowerCase() == 'pending') {
        Timer? timer;
        void updateRemainingTime() {
          final currentTime = DateTime.now();
          final difference = twentyFourHoursLater.difference(currentTime);

          if (difference.isNegative) {
            // Time has expired
            remainingTime.value = Duration.zero;
            timer?.cancel();
          } else {
            // Ensure we show full 24 hours before expiring
            remainingTime.value = difference;
          }
        }

        // Initial update
        updateRemainingTime();

        // Start periodic timer
        timer = Timer.periodic(const Duration(seconds: 1), (_) {
          updateRemainingTime();
        });
        // Cleanup timer when widget is disposed
        return timer.cancel;
      }
      return null;
    }, [remainingTime]);

    // Format the remaining duration
    String formatDuration(Duration duration) {
      final hours = duration.inHours;
      final minutes = duration.inMinutes % 60;
      final seconds = duration.inSeconds % 60;
      return "${hours.toString().padLeft(2, '0')}Jam "
          "${minutes.toString().padLeft(2, '0')}Menit "
          "${seconds.toString().padLeft(2, '0')}Detik";
    }

    return Container(
      width: width,
      padding: const EdgeInsets.all(
        AppDimens.paddingLarge,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primary1,
            radius: AppDimens.iconSizeMediumLarge,
            child: Image.asset(
              statusBadge,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: AppDimens.paddingMedium,
          ),
          Text(
            status.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSizes.bodyLarge,
            ),
          ),
          const SizedBox(
            height: AppDimens.paddingMicro,
          ),
          Text(
            "INV-$id",
            style: const TextStyle(
              fontSize: AppFontSizes.bodySmall,
              color: AppColors.gray2,
            ),
          ),
          const SizedBox(
            height: AppDimens.paddingSmall,
          ),
          Visibility(
            visible: status.toLowerCase() == 'pending',
            child: Text(
              locales?.paymentLimit(remainingTime.value.inSeconds <= 0
                      ? "Kadaluarsa"
                      : formatDuration(remainingTime.value)) ??
                  '',
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionSegmentedItem extends StatelessWidget {
  const TransactionSegmentedItem({
    super.key,
    required this.title,
    required this.transactionItemDatas,
  });

  final String title;
  final List<TransactionItemData> transactionItemDatas;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.only(
        bottom: AppDimens.paddingSmall,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingMedium,
      ),
      width: width,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.gray1,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppDimens.paddingMicro),
              Column(
                children: List.generate(
                  transactionItemDatas.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: AppDimens.paddingMicro),
                      child: TransactionItem(
                        label: transactionItemDatas[index].label,
                        data: transactionItemDatas[index].data,
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
  }
}

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.label,
    required this.data,
  });

  final String label;
  final String data;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: width * 0.3,
          child: Text(
            label,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              color: AppColors.gray2,
              fontSize: AppFontSizes.bodySmall,
            ),
          ),
        ),
        SizedBox(
          width: width * 0.5,
          child: Text(
            data,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.end,
            maxLines: 2,
            style: const TextStyle(
              fontSize: AppFontSizes.bodySmall,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
