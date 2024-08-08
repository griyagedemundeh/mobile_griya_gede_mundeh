import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:shimmer/shimmer.dart';

class TransactionItemData {
  final String label;
  final String data;

  TransactionItemData({required this.label, required this.data});
}

class DetailTransactionScreen extends StatelessWidget {
  const DetailTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          const MeshAppBar(
            title: "Detail Order - Upacara Mebayuh",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const TransactionStatus(),
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
                    title: "Tanggal dan Waktu Penyelenggaran",
                    transactionItemDatas: [
                      TransactionItemData(
                          label: "Tanggal", data: "24 Juli 2024"),
                      TransactionItemData(label: "Waktu", data: "18:00 WITA"),
                    ],
                  ),
                  const SizedBox(
                    height: AppDimens.paddingMedium,
                  ),
                  TransactionSegmentedItem(
                    title: "Lokasi Penyelenggaraan",
                    transactionItemDatas: [
                      TransactionItemData(
                          label: "Kediaman", data: "Bimo Adnyana"),
                      TransactionItemData(
                        label: "Waktu",
                        data:
                            "Jl. Kecubung, Semarapura Kelod, Kec. Klungkung, Kabupaten Klungkung, Bali 80716",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppDimens.paddingMedium,
                  ),
                  const TransactionDetailPackage(),
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
                    title: "Ringkasan Transaksi",
                    transactionItemDatas: [
                      TransactionItemData(
                          label: "Total Harga", data: "Rp 2.500.000"),
                      TransactionItemData(
                        label: "Biaya Operasional",
                        data: "Rp 160.000",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TransactionDetailPackage extends StatelessWidget {
  const TransactionDetailPackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingMedium,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Detail Paket",
            style: TextStyle(
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
                        imageUrl:
                            "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1586262431/1200px-Ngaben_Cremation_vih3yt.jpg",
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
                          child: const Text(
                            "Upacara Mebayuh Bapak Yahya",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: AppDimens.paddingMicro,
                        ),
                        const Text(
                          "Rp, 2.500.000",
                          style: TextStyle(
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
                  child: const Text(
                    """Lorem ipsum odor amet, consectetuer adipiscing elit. Himenaeos nascetur vulputate praesent aliquam ante pharetra. Enim justo dapibus porttitor porta dolor.
                                
                            - Lorem
                            - Ipsum
                            - Dolor
                            - Sit 
                            - Amet
                            - Fugiat
                            - Nulla 
                            - Pariatur
                            
                            Volutpat duis nascetur elementum hac massa tincidunt suscipit odio. Elit duis facilisi sapien interdum nam. Senectus adipiscing ad euismod lacinia orci sociosqu eget fusce.
                                """,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      color: AppColors.gray2,
                      fontSize: AppFontSizes.bodySmall,
                    ),
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

class TransactionStatus extends StatelessWidget {
  const TransactionStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

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
              AppImages.pendingTransaction,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: AppDimens.paddingMedium,
          ),
          const Text(
            "Menunggu Pembayaran",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSizes.bodyLarge,
            ),
          ),
          const SizedBox(
            height: AppDimens.paddingMicro,
          ),
          const Text(
            "INV-32131231230214124242",
            style: TextStyle(
              fontSize: AppFontSizes.bodySmall,
              color: AppColors.gray2,
            ),
          ),
          const SizedBox(
            height: AppDimens.paddingSmall,
          ),
          const Text(
            "Batas Pembayaran:  23:59:01",
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