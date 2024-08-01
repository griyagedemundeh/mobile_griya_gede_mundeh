import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/background/mesh_top_background.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/text_primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/main_bar.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/widget/ceremony_service_item.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/widget/welcome_message.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final double paddingTop = MediaQuery.of(context).padding.top;
    final locales = AppLocalizations.of(context);

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

    return Scaffold(
      body: MeshTopBackground(
        child: Padding(
          padding: EdgeInsets.only(top: paddingTop),
          child: Column(
            children: [
              const MainBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 16.0,
                        ),
                        child: Column(
                          children: [
                            const WelcomeMessage(),
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
                                  onTap: () {},
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  locales?.articleAndInfo ?? '',
                                  style: const TextStyle(
                                    fontSize: AppFontSizes.bodyLarge,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  locales?.articleAndInfoDescription ?? '',
                                  style: const TextStyle(
                                    fontSize: AppFontSizes.bodySmall,
                                    color: AppColors.gray2,
                                  ),
                                ),
                              ],
                            ),
                            TextPrimaryButton(
                              label: locales?.seeAll ?? '',
                              onTap: () {},
                              fontSize: AppFontSizes.bodyMedium,
                              icon: const Icon(
                                Icons.chevron_right_rounded,
                                color: AppColors.primary1,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
