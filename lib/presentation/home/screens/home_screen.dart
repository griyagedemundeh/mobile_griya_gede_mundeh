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

// class Article {
//   final String id;
//   final String title;
//   final String thumbnailUrl;
//   final String publishedAt;
//   final String author;

//   Article(
//       {required this.id,
//       required this.title,
//       required this.thumbnailUrl,
//       required this.publishedAt,
//       required this.author});
// }

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
                                      iconUrl: dataCeremonies?[index]
                                              ?.ceremonyDocumentation?[0]
                                              ?.photo ??
                                          AppImages.dummy,
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
                              //DEBUGG
                              log(name: "Load", "Loadddinggg");
                              return const Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.primary1,
                                ),
                              );
                            }

                            if (articles.isError) {
                              //DEBUGG
                              log(
                                  name: "Error Article",
                                  articles.error.toString());
                              return const DataEmpty();
                            }

                            if (articles.isSuccess &&
                                dataArticles?.isNotEmpty == true) {
                              log(
                                  name: "Article State",
                                  "Articles Loaded Successfully!");
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
                                  //DEBUGG
                                  final article = dataArticles![index];
                                  log("Article Item: ${article?.title}");

                                  return ArticleItem(
                                    title: dataArticles[index]?.title ?? '',
                                    thumbnailUrl:
                                        dataArticles[index]?.thumbnail ?? '',
                                    publishedAt: dataArticles[index]
                                            ?.createdAt
                                            .toString() ??
                                        '',
                                    author: dataArticles[index]
                                            ?.author
                                            ?.userId
                                            .toString() ??
                                        '',
                                    onTap: () {
                                      if (dataArticles[index]
                                              ?.title
                                              .toLowerCase() ==
                                          'lainnya') {
                                        PrimaryNavigation.pushFromRight(context,
                                            page: const OtherCeremonyScreen());
                                        return;
                                      }

                                      PrimaryNavigation.pushFromRight(
                                        context,
                                        page: DetailArticleScreen(
                                          id: dataArticles[index]?.id ?? 0,
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            }
                            return const DataEmpty();
                            return const SizedBox.shrink();
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),

                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      //   child: ListView.separated(
                      //     separatorBuilder: (context, index) {
                      //       return const SizedBox(
                      //         height: AppDimens.paddingMedium,
                      //       );
                      //     },
                      //     shrinkWrap: true,
                      //     physics: const NeverScrollableScrollPhysics(),
                      //     itemCount: dataArticles?.length ?? 0,
                      //     itemBuilder: (context, index) {
                      //       return ArticleItem(
                      //         title: dataArticles?[index]?.title ?? '',
                      //         thumbnailUrl:
                      //             dataArticles?[index]?.thumbnail ?? '',
                      //         publishedAt:
                      //             dataArticles?[index]?.createdAt.toString() ??
                      //                 '',
                      //         author:
                      //             dataArticles?[index]?.adminId.toString() ??
                      //                 '',
                      //         onTap: () {
                      //           PrimaryNavigation.pushFromRight(
                      //             context,
                      //             page: DetailArticleScreen(
                      //               id: dataArticles?[index]?.id ?? 0,
                      //             ),
                      //           );
                      //         },
                      //       );
                      //     },
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: height * 0.04,
                      // ),
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
