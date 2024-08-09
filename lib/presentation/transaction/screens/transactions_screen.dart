import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/text_secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_top_bar_secondary.dart';
import 'package:mobile_griya_gede_mundeh/presentation/transaction/screens/detail_transaction_screen.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TransactionHistory {
  final String id;
  final String title;
  final String price;
  final String status;
  final String thumbnailUrl;

  TransactionHistory(
      {required this.id,
      required this.title,
      required this.price,
      required this.status,
      required this.thumbnailUrl});
}

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

    final List<TransactionHistory> transactions = [
      TransactionHistory(
        id: "1",
        title: "Upacara Mebayuh Bapak Andik Suryono",
        price: "Rp 2.500.000",
        status: "Sukses",
        thumbnailUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpQc4j3Rs-cgCFuRNqbKXAEgyWvtCBrSTvmQ&s",
      ),
      TransactionHistory(
        id: "2",
        title: "Upacara Mebayuh Bapak Andik Suryono",
        price: "Rp 2.500.000",
        status: "Pending",
        thumbnailUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpQc4j3Rs-cgCFuRNqbKXAEgyWvtCBrSTvmQ&s",
      ),
      TransactionHistory(
        id: "1",
        title: "Upacara Mebayuh Bapak Andik Suryono",
        price: "Rp 2.500.000",
        status: "Batal",
        thumbnailUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpQc4j3Rs-cgCFuRNqbKXAEgyWvtCBrSTvmQ&s",
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          MeshTopBarSecondary(
            title: locales?.transactionHistory ?? '',
            isWihoutBack: true,
            child: const SearchInput(),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.paddingSmall,
              ),
              itemCount: transactions.length,
              separatorBuilder: (context, index) {
                return const Divider(
                  color: AppColors.gray1,
                  height: 1,
                  thickness: 1,
                );
              },
              itemBuilder: (context, index) {
                final transaction = transactions[index];

                return TransactionHistoryItem(
                  onTap: () {
                    PrimaryNavigation.pushFromRight(
                      context,
                      page: const DetailTransactionScreen(),
                    );
                  },
                  title: transaction.title,
                  price: transaction.price,
                  status: transaction.status,
                  thumbnailUrl: transaction.thumbnailUrl,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

    return Container(
      padding: const EdgeInsets.only(
        left: AppDimens.paddingMedium,
        right: AppDimens.paddingSmall,
      ),
      decoration: BoxDecoration(
        color: AppColors.light1.withOpacity(0.5),
        border: Border.all(
          color: AppColors.lightgray2,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(
          AppDimens.iconSizeLarge,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              autofocus: false,
              keyboardType: TextInputType.multiline,
              controller: TextEditingController(),
              cursorColor: AppColors.primary1,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                    right: AppDimens.paddingSmall,
                  ),
                  border: InputBorder.none,
                  hintText: locales?.searchTransaction ?? '',
                  hintStyle: const TextStyle(
                    fontSize: AppFontSizes.bodyMedium,
                  )),
            ),
          ),
          IconButton(
            onPressed: () async {},
            icon: SvgPicture.asset(
              AppImages.icSearch,
            ),
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
          ClipRRect(
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
          const SizedBox(
            width: AppDimens.paddingSmall,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ChipStatus(
                color: status.toLowerCase() == "sukses"
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
        ],
      ),
    );
  }
}

class ChipStatus extends StatelessWidget {
  const ChipStatus({
    super.key,
    required this.label,
    required this.color,
  });

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingSmall,
        vertical: AppDimens.paddingMicro,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(
          0.3,
        ),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: color,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: AppDimens.paddingMicro,
            backgroundColor: color,
          ),
          const SizedBox(
            width: AppDimens.paddingMicro,
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: AppFontSizes.bodySmall,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
