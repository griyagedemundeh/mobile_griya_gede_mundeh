import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fquery/fquery.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:mobile_griya_gede_mundeh/data/models/article/response/article.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/article/article_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/article/controller/article_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/article/screens/detail_article_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/screens/home_screen.dart';
import 'package:shimmer/shimmer.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    final ArticleController articleController =
        ArticleController(articleRepository: ArticleRepository());

    Future<ApiBaseResponse<List<Article?>?>?> getArticles() async {
      final response = await articleController.getArticles(
          listDataParams: ListDataParams(page: 1, limit: 100));
      return response;
    }

    final articles =
        useQuery<ApiBaseResponse<List<Article?>?>?, ApiBaseResponse<dynamic>>(
      ['articles'],
      getArticles,
    );

    final dataArticles = articles.data?.data as List<Article?>?;

    // final List<Article> articles = [
    //   Article(
    //     id: "1",
    //     title:
    //         "Arti Mepamit, Upacara Adat Bali yang Dijalani Mahalini & Dinikahi Rizky Febian",
    //     thumbnailUrl:
    //         "https://awsimages.detik.net.id/community/media/visual/2024/05/05/potret-mahalini-dan-rizky-febian-gelar-upacara-adat-bali-jelang-pernikahan-6_169.jpeg?w=1200",
    //     publishedAt: "Kamis, 02 Mei 2024",
    //     author: "Billie Eilish",
    //   ),
    //   Article(
    //     id: "2",
    //     title: "Mengenal Upacara Adat Yang Ada di Bali",
    //     thumbnailUrl:
    //         "https://awsimages.detik.net.id/community/media/visual/2022/08/02/melihat-prosesi-ngaben-massal-di-bali-2_169.jpeg?w=600&q=90",
    //     publishedAt: "Jumat, 26 Juli 2024",
    //     author: "Thom Yorke",
    //   ),
    //   Article(
    //     id: "3",
    //     title: "Rangkaian Pernikahan Orang Bali: Madewasa Ayu hingga Mejauman",
    //     thumbnailUrl:
    //         "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/03/22/Pawai-Ogoh-Ogoh-Awal-Mula-Kedudukan-Dalam-Tradisi-Hindu-Bali-Serta-Pesan-Sosialnya-3506145498.jpg",
    //     publishedAt: "Rabu, 11 Maret 2024",
    //     author: "Ben Barlow",
    //   ),
    // ];

    return Scaffold(
      body: Column(
        children: [
          const MeshAppBar(title: "Artikel dan Informasi"),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.paddingMedium,
              ),
              itemCount: dataArticles?.length ?? 0,
              separatorBuilder: (context, index) {
                return const Divider(
                  color: AppColors.gray1,
                  height: 1,
                );
              },
              itemBuilder: (context, index) {
                // final article = articles[index];

                return MaterialButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    if (dataArticles?[index]?.title.toLowerCase() ==
                        'lainnya') {
                      PrimaryNavigation.pushFromRight(
                        context,
                        page: const DetailArticleScreen(),
                      );
                      return;
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppDimens.paddingMedium,
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            AppDimens.paddingSmall,
                          ),
                          child: CachedNetworkImage(
                            imageUrl: dataArticles?[index]?.thumbnail ?? '',
                            fit: BoxFit.cover,
                            height: height * 0.15,
                            width: height * 0.2,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) {
                              return Shimmer.fromColors(
                                baseColor: AppColors.gray2.withOpacity(0.6),
                                highlightColor: AppColors.light1,
                                child: const SizedBox(),
                              );
                            },
                            errorWidget: (context, url, error) =>
                                const SizedBox(),
                          ),
                        ),
                        const SizedBox(
                          width: AppDimens.paddingSmall,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                dataArticles?[index]?.title ?? '',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: const TextStyle(
                                  fontSize: AppFontSizes.bodyMedium,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    dataArticles?[index]?.createdAt.toString() ?? '',
                                    style: const TextStyle(
                                      fontSize: AppFontSizes.bodySmall,
                                      color: AppColors.gray2,
                                    ),
                                  ),
                                  const Text(
                                    ".",
                                    style: TextStyle(
                                      fontSize: AppFontSizes.titleMediumLarge,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    dataArticles?[index]?.adminId.toString() ?? '',
                                    style: const TextStyle(
                                      fontSize: AppFontSizes.bodySmall,
                                      color: AppColors.gray2,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "Lantas, apa itu Mepamit? Berikut penjelasannya dirangkum dari artikel jurnal Upacara Pawiwahan Dalam Agama Hindu karya Luh Sukma Ningsih dan Bentuk, Fungsi dan Makna Tata Rias dan Prosesi Upacara Perkawinan Bali Agung di Bali karya Ni Putu Delia Wulansari via detikBali.",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: AppFontSizes.bodySmall,
                                  color: AppColors.gray2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
