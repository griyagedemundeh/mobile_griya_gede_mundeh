import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:intl/intl.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:mobile_griya_gede_mundeh/data/models/article/response/article.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/article/article_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/article/controller/article_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/article/screens/detail_article_screen.dart';
import 'package:shimmer/shimmer.dart';

// class ArticlesScreen extends StatelessWidget {
class ArticlesScreen extends HookWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final scrollController = useScrollController();
    final isScrolled = useState(false);

    String formatDate(DateTime? date) {
      if (date == null) return '';
      return DateFormat('EEEE, d MMMM yyyy', 'id_ID').format(date);
    }

    String formatTime(DateTime? date) {
      if (date == null) return '';
      return DateFormat('hh.mm a', 'id_ID').format(date);
    }

    final ArticleController articleController =
        ArticleController(articleRepository: ArticleRepository());

    Future<ApiBaseResponse<List<Article?>?>?> getArticles() async {
      final response = await articleController.getArticles(
          listDataParams: ListDataParams(page: 1, limit: 40));
      return response;
    }

    final articles =
        useQuery<ApiBaseResponse<List<Article?>?>?, ApiBaseResponse<dynamic>>(
      ['articles'],
      getArticles,
    );

    final dataArticles = articles.data?.data as List<Article?>?;

    useEffect(() {
      void listener() {
        if ((scrollController.offset.ceil()) > 100) {
          isScrolled.value = true;
        } else {
          isScrolled.value = false;
        }
      }

      scrollController.addListener(listener);
      return () => scrollController.removeListener(listener);
    }, [scrollController]);

    return Scaffold(
      body: Column(
        children: [
          const MeshAppBar(title: "Artikel dan Informasi"),
          Expanded(child: Builder(builder: (context) {
            if (articles.isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary1,
                ),
              );
            }

            if (articles.isError) {
              return const DataEmpty();
            }
            if (articles.isSuccess && dataArticles?.isNotEmpty == true) {
              return ListView.separated(
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
                  return MaterialButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      if (dataArticles?[index]?.title.toLowerCase() ==
                          'lainnya') {
                        PrimaryNavigation.pushFromRight(
                          context,
                          page: DetailArticleScreen(
                            id: dataArticles?[index]?.id ?? 0,
                          ),
                        );
                        return;
                      }
                      PrimaryNavigation.pushFromRight(context,
                          page: DetailArticleScreen(
                            id: dataArticles?[index]?.id ?? 0,
                          ));
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                Text(
                                  formatDate(dataArticles?[index]?.createdAt),
                                  style: const TextStyle(
                                    fontSize: AppFontSizes.bodySmall,
                                    color: AppColors.gray2,
                                  ),
                                ),
                                Text(
                                  dataArticles?[index]
                                          ?.author
                                          ?.user
                                          .fullName
                                          .toString() ??
                                      '',
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
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
              );
            }
            return const DataEmpty();
          })),
        ],
      ),
    );
  }
}
