import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:fquery/fquery.dart';
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
import 'package:mobile_griya_gede_mundeh/utils/index.dart';
import 'package:shimmer/shimmer.dart';

class DetailArticleScreen extends HookWidget {
  const DetailArticleScreen({super.key, this.id});

  final int? id;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final scrollController = useScrollController();

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
                              AppImages.dummyArticle,
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
                        dataDetailArticle?.title ?? "",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: AppFontSizes.titleMediumLarge,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(AppDimens.paddingMedium),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ArticleMetaItem(
                              icon: AppImages.icDate,
                              data: formatDate(dataDetailArticle?.createdAt),
                              color: AppColors.gray2,
                            ),
                            const SizedBox(
                              height: AppDimens.paddingSmall,
                            ),
                            ArticleMetaItem(
                              icon: AppImages.icAuthor,
                              data: dataDetailArticle?.author?.user.fullName
                                      .toString() ??
                                  '',
                              color: AppColors.gray2,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppDimens.paddingMedium),
                      HtmlWidget(
                        dataDetailArticle?.content ?? '',
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
