import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/background/mesh_top_background.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/button_with_tile.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/ceremony_card.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/main_bar.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/article/screens/articles_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/article/screens/detail_article_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/detail_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/other_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony_history/screens/ceremony_histories_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony_history/screens/detail_ceremony_history_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/controller/home_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/widget/article_item.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/widget/ceremony_service_item.dart';

class CeremonyService {
  final String id;
  final String iconUrl;
  final String title;

  CeremonyService({
    required this.id,
    required this.iconUrl,
    required this.title,
  });
}

class Article {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String publishedAt;
  final String author;

  Article(
      {required this.id,
      required this.title,
      required this.thumbnailUrl,
      required this.publishedAt,
      required this.author});
}

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

    final HomeController homeController =
        HomeController(authRepository: AuthRepository());

    final Auth? user = homeController.getUser();

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

    final List<CeremonyService> ceremonyServices = [
      CeremonyService(
          id: "1",
          iconUrl:
              "https://asset-a.grid.id/crop/0x0:0x0/780x800/photo/bobofoto/original/22383_upacara-potong-gigi-di-bali.jpg",
          title: "Metatah"),
      CeremonyService(
          id: "2",
          iconUrl:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpQc4j3Rs-cgCFuRNqbKXAEgyWvtCBrSTvmQ&s",
          title: "Mebayuh"),
      CeremonyService(
          id: "3",
          iconUrl:
              "https://rebornprojectmedia.com/wp-content/uploads/2022/03/Melaspas_7-scaled.jpg",
          title: "Melaspas"),
      CeremonyService(
          id: "4",
          iconUrl:
              "https://panbelog.wordpress.com/wp-content/uploads/2014/11/112214_0125_pawiwahan1.jpg",
          title: "Pawiwahan"),
      CeremonyService(
          id: "5",
          iconUrl:
              "https://assets-a1.kompasiana.com/statics/crawl/553016ae0423bdeb638b4567.jpeg",
          title: "Otonan"),
      CeremonyService(
          id: "6",
          iconUrl:
              "https://nusantara7.id/wp-content/uploads/2021/07/mecaru.jpg",
          title: "Mecaru"),
      CeremonyService(
          id: "7",
          iconUrl:
              "https://lh3.googleusercontent.com/proxy/RnpePuRN5t9M3wSWsOTIOFLJBKHZ7TMMWRs7zOQbz4xqDShUQwaeACoCb6ex6xiZG1sYcAfQrvSyJBSO-BBcp3MfKO_-6OwjPyaAklvwXdH_K5Pm",
          title: "Mewinten"),
      CeremonyService(
          id: "8",
          iconUrl:
              "https://ik.imagekit.io/tvlk/blog/2020/05/Upacara-Melasti-Website-Resmi-Pemerintah-Kabupaten-Buleleng.jpg?tr=dpr-2,w-675",
          title: "Lainnya"),
    ];

    final List<Article> articles = [
      Article(
        id: "1",
        title:
            "Arti Mepamit, Upacara Adat Bali yang Dijalani Mahalini & Dinikahi Rizky Febian",
        thumbnailUrl:
            "https://awsimages.detik.net.id/community/media/visual/2024/05/05/potret-mahalini-dan-rizky-febian-gelar-upacara-adat-bali-jelang-pernikahan-6_169.jpeg?w=1200",
        publishedAt: "Kamis, 02 Mei 2024",
        author: "Billie Eilish",
      ),
      Article(
        id: "2",
        title: "Mengenal Upacara Adat Yang Ada di Bali",
        thumbnailUrl:
            "https://awsimages.detik.net.id/community/media/visual/2022/08/02/melihat-prosesi-ngaben-massal-di-bali-2_169.jpeg?w=600&q=90",
        publishedAt: "Jumat, 26 Juli 2024",
        author: "Thom Yorke",
      ),
      Article(
        id: "3",
        title: "Rangkaian Pernikahan Orang Bali: Madewasa Ayu hingga Mejauman",
        thumbnailUrl:
            "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/03/22/Pawai-Ogoh-Ogoh-Awal-Mula-Kedudukan-Dalam-Tradisi-Hindu-Bali-Serta-Pesan-Sosialnya-3506145498.jpg",
        publishedAt: "Rabu, 11 Maret 2024",
        author: "Ben Barlow",
      ),
    ];

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
                            GridView.builder(
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
                              itemCount: ceremonyServices.length,
                              itemBuilder: (context, index) {
                                return CeremonyServiceItem(
                                  onTap: () {
                                    if (ceremonyServices[index]
                                            .title
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
                                        id: "$index",
                                      ),
                                    );
                                  },
                                  title: ceremonyServices[index].title,
                                  iconUrl: ceremonyServices[index].iconUrl,
                                );
                              },
                            ),
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
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: AppDimens.paddingMedium,
                            );
                          },
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: articles.length,
                          itemBuilder: (context, index) {
                            return ArticleItem(
                              title: articles[index].title,
                              thumbnailUrl: articles[index].thumbnailUrl,
                              publishedAt: articles[index].publishedAt,
                              author: articles[index].author,
                              onTap: () {
                                PrimaryNavigation.pushFromRight(
                                  context,
                                  page: DetailArticleScreen(
                                    id: articles[index].id,
                                  ),
                                );
                              },
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
