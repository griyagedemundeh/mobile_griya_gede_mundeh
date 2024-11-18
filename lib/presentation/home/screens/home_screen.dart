import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/background/mesh_top_background.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/button_with_tile.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/ceremony_card.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/main_bar.dart';
import 'package:mobile_griya_gede_mundeh/data/models/article/response/article.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/documentation/response/ceremony_documentation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/response/ceremony.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/article/article_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/ceremony/ceremony_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/article/controller/article_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/article/screens/articles_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/article/screens/detail_article_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/detail_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/other_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony_history/screens/ceremony_histories_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony_history/screens/detail_ceremony_history_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/controller/home_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/widget/article_item.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/widget/ceremony_service_item.dart';
import 'package:mobile_griya_gede_mundeh/utils/index.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.of(context).size.height;
    final double paddingTop = MediaQuery.of(context).padding.top;
    final scrollController = useScrollController();
    final isScrolled = useState(false);

    final HomeController homeController = HomeController(
      authRepository: AuthRepository(),
      ceremonyRepository: CeremonyRepository(),
    );

    final ArticleController articleController =
        ArticleController(articleRepository: ArticleRepository());

    final Auth? user = homeController.getUser();

    Future<ApiBaseResponse<List<Ceremony?>?>?> getCeremonies() async {
      final response = await homeController.getCeremonies(
        listDataParams: ListDataParams(
          page: 1,
          limit: 7,
        ),
      );

      return response;
    }

    Future<ApiBaseResponse<List<Article?>?>?> getArticles() async {
      final response = await articleController.getArticles(
        listDataParams: ListDataParams(
          page: 1,
          limit: 3,
        ),
      );

      return response;
    }

    final ceremonies =
        useQuery<ApiBaseResponse<List<Ceremony?>?>?, ApiBaseResponse<dynamic>>(
      ['ceremonies'],
      getCeremonies,
      // cacheDuration: const Duration(hours: 1),
      staleDuration: const Duration(hours: 1),
    );

    final articles =
        useQuery<ApiBaseResponse<List<Article?>?>?, ApiBaseResponse<dynamic>>(
      ['articles'],
      getArticles,
    );

    final dataCeremonies = ceremonies.data?.data as List<Ceremony?>?;

    final dataArticles = articles.data?.data as List<Article?>?;

    useEffect(() {
      void listener() {
        if ((scrollController.offset.ceil()) > 100) {
          isScrolled.value = true;
        } else {
          isScrolled.value = false;
        }
      }

      if (((ceremonies.data?.data as List<Ceremony?>?)?.length ?? 0) < 8 &&
          dataCeremonies?.last?.title.toLowerCase() != 'lainnya') {
        dataCeremonies?.add(
          Ceremony(
            id: 99999,
            ceremonyCategoryId: 99999,
            title: "Lainnya",
            description: "",
            isActive: true,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            ceremonyCategory: null,
            ceremonyDocumentation: [
              CeremonyDocumentation(
                id: 9999,
                ceremonyServiceId: 9999,
                photo: AppImages.dummyCeremony,
                createdAt: DateTime.now(),
                updatedAt: DateTime.now(),
              ),
            ],
          ),
        );
      }

      scrollController.addListener(listener);
      return () => scrollController.removeListener(listener);
    }, [scrollController, ceremonies]);

    final List<CeremonyHistory> ceremonyHistories = [
      CeremonyHistory(
        ceremonyTitle: "Upacara Mebayuh Bapak Andik Suryono",
        ceremonyType: "Dewa Yadnya",
        countDown: "10 Jam 39 Menit 20 Detik",
        date: "Kamis, 24 Juli 2024",
        location:
            "Jl. Kecubung, Semarapura Kelod, Kec. Klungkung, Kabupaten Klungkung, Bali 80716",
        status: "Persiapan",
        time: "18:00 WITA",
      ),
      CeremonyHistory(
        ceremonyTitle: "Upacara Mebayuh Bapak Andik Suryono",
        ceremonyType: "Dewa Yadnya",
        countDown: "10 Jam 39 Menit 20 Detik",
        date: "Kamis, 24 Juli 2024",
        location:
            "Jl. Kecubung, Semarapura Kelod, Kec. Klungkung, Kabupaten Klungkung, Bali 80716",
        status: "Persiapan",
        time: "18:00 WITA",
      ),
      CeremonyHistory(
        ceremonyTitle: "Upacara Mebayuh Bapak Andik Suryono",
        ceremonyType: "Dewa Yadnya",
        countDown: "10 Jam 39 Menit 20 Detik",
        date: "Kamis, 24 Juli 2024",
        location:
            "Jl. Kecubung, Semarapura Kelod, Kec. Klungkung, Kabupaten Klungkung, Bali 80716",
        status: "Persiapan",
        time: "18:00 WITA",
      ),
    ];

    return MeshTopBackground(
      child: Padding(
        padding: EdgeInsets.only(top: paddingTop),
        child: Column(
          children: [
            MainBar(
              imgUrl: user?.avatarUrl ?? '',
              name: user?.fullName ?? '',
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  color: isScrolled.value ? Colors.white : null,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 16.0,
                        ),
                        child: Column(
                          children: [
                            // const WelcomeMessage(),
                            CermonyCard(
                              isWithCover: true,
                              ceremonyTitle: ceremonyHistories[0].ceremonyTitle,
                              ceremonyType: ceremonyHistories[0].ceremonyType,
                              countDown: ceremonyHistories[0].countDown,
                              date: ceremonyHistories[0].date,
                              location: ceremonyHistories[0].location,
                              status: ceremonyHistories[0].status,
                              time: ceremonyHistories[0].time,
                              onTap: () {
                                PrimaryNavigation.pushFromRight(
                                  context,
                                  page: const DetailCeremonyHistoryScreen(),
                                );
                              },
                            ),
                            const SizedBox(height: AppDimens.marginLarge),

                            Builder(builder: (context) {
                              if (ceremonies.isLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(
                                    color: AppColors.primary1,
                                  ),
                                );
                              }

                              if (ceremonies.isError) {
                                return const DataEmpty();
                              }

                              if (ceremonies.isSuccess &&
                                  dataCeremonies?.isNotEmpty == true) {
                                return GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    childAspectRatio: 3 / (3.5),
                                    mainAxisSpacing: AppDimens.paddingMedium,
                                    crossAxisSpacing: AppDimens.paddingMedium,
                                  ),
                                  itemCount: dataCeremonies?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    final ceremony = dataCeremonies?[1]?.title;
                                    log(name: "ceremony", ceremony.toString());
                                    return CeremonyServiceItem(
                                      onTap: () {
                                        if (dataCeremonies?[index]
                                                ?.title
                                                .toLowerCase() ==
                                            'lainnya') {
                                          PrimaryNavigation.pushFromRight(
                                            context,
                                            page: const OtherCeremonyScreen(),
                                          );
                                          return;
                                        }

                                        PrimaryNavigation.pushFromRight(
                                          context,
                                          page: DetailCeremonyScreen(
                                            id: dataCeremonies?[index]?.id ?? 0,
                                          ),
                                        );
                                      },
                                      title:
                                          dataCeremonies?[index]?.title ?? '',
                                      iconUrl: ((dataCeremonies?[index]
                                                      ?.ceremonyDocumentation
                                                      ?.length ??
                                                  0) >
                                              0)
                                          ? (dataCeremonies?[index]
                                                  ?.ceremonyDocumentation
                                                  ?.first
                                                  ?.photo ??
                                              '')
                                          : AppImages.dummyCeremony,
                                    );
                                  },
                                );
                              }

                              return const DataEmpty();
                            }),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: AppDimens.marginLarge,
                        ),
                        child: Divider(
                          color: AppColors.lightgray,
                          height: AppDimens.marginMedium,
                          thickness: AppDimens.marginMedium,
                        ),
                      ),
                      ButtonWithTitle(
                        onTap: () {
                          PrimaryNavigation.pushFromRight(
                            context,
                            page: const ArticlesScreen(),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Builder(
                          builder: (context) {
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

                            if (articles.isSuccess &&
                                dataArticles?.isNotEmpty == true) {
                              return ListView.separated(
                                separatorBuilder: (context, index) {
                                  return const SizedBox(
                                    height: AppDimens.paddingMedium,
                                  );
                                },
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: dataArticles?.length ?? 0,
                                itemBuilder: (context, index) {
                                  return ArticleItem(
                                    title: dataArticles?[index]?.title ?? '',
                                    thumbnailUrl:
                                        dataArticles?[index]?.thumbnail ?? '',
                                    publishedAt: formatDate(
                                        dataArticles?[index]?.createdAt),
                                    author: dataArticles?[index]
                                            ?.author
                                            ?.user
                                            .fullName ??
                                        '',
                                    onTap: () {
                                      if (dataArticles?[index]
                                              ?.title
                                              .toLowerCase() ==
                                          'lainnya') {
                                        PrimaryNavigation.pushFromRight(context,
                                            page: const ArticlesScreen());
                                        return;
                                      }

                                      PrimaryNavigation.pushFromRight(
                                        context,
                                        page: DetailArticleScreen(
                                          id: dataArticles?[index]?.id ?? 0,
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            }
                            return SizedBox(
                              height: height * 0.5,
                              child: const DataEmpty(),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
