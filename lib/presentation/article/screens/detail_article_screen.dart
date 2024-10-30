import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/article_meta_item.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:shimmer/shimmer.dart';

class DetailArticleScreen extends StatelessWidget {
  const DetailArticleScreen({super.key, this.id});

  final int? id;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          const MeshAppBar(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.marginMedium,
                vertical: AppDimens.paddingLarge,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      AppDimens.paddingSmall,
                    ),
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://awsimages.detik.net.id/community/media/visual/2022/08/02/melihat-prosesi-ngaben-massal-di-bali-2_169.jpeg?w=600&q=90",
                      fit: BoxFit.cover,
                      height: height * 0.25,
                      width: width * 0.8,
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
                  const SizedBox(height: AppDimens.paddingMedium),
                  const Text(
                    "Arti Mepamit, Upacara Adat Bali yang Dijalani Mahalini & Dinikahi Rizky Febian",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: AppFontSizes.titleMediumLarge,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(AppDimens.paddingMedium),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ArticleMetaItem(
                          icon: AppImages.icDate,
                          data: "Kamis, 24 Juli 2024",
                          color: AppColors.gray2,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppDimens.paddingMedium,
                          ),
                          child: Text(
                            "|",
                            style: TextStyle(
                              color: AppColors.gray2,
                            ),
                          ),
                        ),
                        ArticleMetaItem(
                          icon: AppImages.icAuthor,
                          data: "Jcob",
                          color: AppColors.gray2,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppDimens.paddingMedium),
                  const Text(
                    """BALI - Mahalini Raharja akan menjalani upacara Mepamit sebelum menikah dengan Rizky Febian.

Kabar ini telah mendapatkan konfirmasi dari salah satu tetangga Mahalini.

"Kalau di Bali ini kan upacara mepamit dulu sebelum digelar upacara nikahnya," ungkap Made Kardi, tetangga Mahalini, kepada detikBali.

Lantas, apa itu Mepamit? Berikut penjelasannya dirangkum dari artikel jurnal Upacara Pawiwahan Dalam Agama Hindu karya Luh Sukma Ningsih dan Bentuk, Fungsi dan Makna Tata Rias dan Prosesi Upacara Perkawinan Bali Agung di Bali karya Ni Putu Delia Wulansari via detikBali.

Arti Upacara Mepamit
Upacara Mepamit, dikenal juga dengan istilah Mejauman atau upacara melipat bantal, adalah salah satu rangkaian pernikahan dalam tradisi Bali.

Arti kata Mepamit adalah berpamitan atau perpisahan. Ucapara Mepamit dilakukan ketikan seseorang meminta izin untuk meninggalkan tempat tinggalnya.

Upacara Mepamit dalam konsep pernikahan bermakna sebagai bentuk pamitan calon pengantin wanita kepada para leluruhnya. Sebab, setelah menikah, wanita tersebut akan menjadi tanggung jawab calon pengantin pria.

Selain itu, upacara Mepamit juga bisa bermakna sebagai pamitnya seseorang yang akan meninggalkan kepercayaannya.

Prosesi Upacara Mepamit
Upacara Mepamit dilakukan di kediaman calon pengantin wanita. Waktu dan pelaksanaan upacara Mepamit berdasarkan kesapakatan dua belah pihak.

Pada prosesi ini, calon pengantin wanita akan menjalani persembahyangan di sanggah milik keluarganya. Sementara calon pengantin pria akan membawa sejumlah banten atau sesajen, di antaranya:
Alem
Ketipat bantal
Sumping
Cerorot
Apem
Kuskus
Wajik
Kekupa
Berbagai buah dan lauk pauk khas Bali""",
                    style: TextStyle(
                      fontSize: AppFontSizes.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
