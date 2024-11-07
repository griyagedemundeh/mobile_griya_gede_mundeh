import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:intl/intl.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/article_meta_item.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:mobile_griya_gede_mundeh/data/models/article/response/article.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/article/article_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/article/controller/article_controller.dart';
import 'package:shimmer/shimmer.dart';

class DetailArticleScreen extends HookWidget {
  const DetailArticleScreen({super.key, this.id});

  final int? id;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final scrollController = useScrollController();
    final isScrolled = useState(false);

    String formatDate(DateTime? date) {
      if (date == null) return '';
      return DateFormat('EEEE, d MMMM yyyy - hh.mm a', 'id_ID').format(date);
    }

    final ArticleController articleController =
        ArticleController(articleRepository: ArticleRepository());

    Future<ApiBaseResponse<Article?>?> getArticle() async {
      final response = await articleController.getArticle(id: id ?? 0);
      return response;
    }

    final articleResponse =
        useQuery<ApiBaseResponse<Article?>?, ApiBaseResponse<dynamic>>(
      ['article_$id'],
      getArticle,
    );

    final dataDetailArticle = articleResponse.data?.data as Article?;

    useEffect(() {
      scrollController.addListener(() {});
      return () => scrollController.removeListener;
    }, [scrollController]);

    return Scaffold(
      body: Column(
        children: [
          const MeshAppBar(),
          Expanded(
            child: Builder(builder: (context) {
              if (articleResponse.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary1,
                  ),
                );
              }

              if (articleResponse.isError) {
                return const DataEmpty();
              }

              if (articleResponse.isSuccess &&
                  articleResponse.data?.data != null) {
                return SingleChildScrollView(
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
                          imageUrl: dataDetailArticle?.thumbnail ??
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
                          errorWidget: (context, url, error) =>
                              const SizedBox(),
                        ),
                      ),
                      const SizedBox(height: AppDimens.paddingMedium),
                      Text(
                        dataDetailArticle?.title ??
                            "Arti Mepamit, Upacara Adat Bali yang Dijalani Mahalini & Dinikahi Rizky Febian",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: AppFontSizes.titleMediumLarge,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.all(AppDimens.paddingMedium),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ArticleMetaItem(
                              icon: AppImages.icDate,
                              data: formatDate(dataDetailArticle?.createdAt),
                              color: AppColors.gray2,
                            ),
                            const Padding(
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
                              data: dataDetailArticle?.author?.userId.toString() ?? 'a',
                              color: AppColors.gray2,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppDimens.paddingMedium),
                      Text(
                        dataDetailArticle?.content ?? "",
                        style: const TextStyle(
                          fontSize: AppFontSizes.bodySmall,
                        ),
                      ),
                    ],
                  ),
                );
              }
              return const DataEmpty();
            }),
          )
        ],
      ),
    );
  }
}
