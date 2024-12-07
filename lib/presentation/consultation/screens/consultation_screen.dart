import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/icon_rounded_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/consultation/ceremony/ceremony_consultation_history.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/consultation/consultation_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/consultation_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/tab_indicator_item.dart';
import 'package:mobile_griya_gede_mundeh/presentation/consultation/controller/consultation_controller.dart';
import 'package:mobile_griya_gede_mundeh/utils/index.dart';
import 'package:shimmer/shimmer.dart';

class Chat {
  final String id;
  final String message;
  final bool isAdmin;
  final DateTime sendAt;

  Chat({
    required this.id,
    required this.message,
    required this.isAdmin,
    required this.sendAt,
  });
}

const tabs = ['Upacara Agama', 'Umum'];

class ConsultationScreen extends HookConsumerWidget {
  const ConsultationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final scrollController = useScrollController();
    final tabController = useTabController(initialLength: tabs.length);

    final ConsultationController consultationController =
        ConsultationController(
      consultationRepository: ConsultationRepository(),
    );

    Future<ApiBaseResponse<List<CeremonyConsultationHistory?>?>?>
        getCeremonyConsultationHistories() async {
      final response =
          await consultationController.getCeremonyConsultationHistories();

      return response;
    }

    final ceremonyConsultationHistoriesResponse = useQuery<
        ApiBaseResponse<List<CeremonyConsultationHistory?>?>?, dynamic>(
      ['consultation_history'],
      getCeremonyConsultationHistories,
    );

    final ceremonyConsultationHitories = ceremonyConsultationHistoriesResponse
        .data?.data as List<CeremonyConsultationHistory?>?;

    final List<Chat> chats = [
      Chat(
        id: "1",
        message:
            "Hi, saya tertarik dengan paket 2 untuk upacara Mebayuh. Apakah paket ini juga menyediakan dokumentasi foto dan video?",
        isAdmin: false,
        sendAt: DateTime.now(),
      ),
      Chat(
        id: "2",
        message:
            "Halo kakak😁. Paket 2 ini mencakup persiapan dan pelaksanaan upacara Metatah, termasuk sesajen dan pemangku. Dokumentasi foto dan video bisa ditambahkan dengan biaya tambahan sebesar Rp 500.000. Apakah Anda berminat untuk menambahkan layanan dokumentasi?",
        isAdmin: true,
        sendAt: DateTime.now(),
      ),
      // ... other chat messages
    ];

    return Scaffold(
      body: Column(
        children: [
          const MeshAppBar(
            title: "Konsultasi",
          ),
          Expanded(
            child: DefaultTabController(
              length: tabController.length,
              child: Column(
                children: [
                  TabBar(
                    controller: tabController,
                    labelColor: AppColors.dark1,
                    tabAlignment: TabAlignment.center,
                    isScrollable: true,
                    dividerColor: AppColors.gray1,
                    tabs: List.generate(
                      tabController.length,
                      (index) => TabIndicatorItem(
                        label: tabs[index],
                        width: mediaQuery.size.width * 0.4,
                      ),
                    ),
                    indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 4,
                        color: AppColors.primary1,
                      ),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(4),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppDimens.paddingMedium),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(
                        tabController.length,
                        (index) {
                          if (tabs[index].toLowerCase() == 'umum') {
                            return ChatView(
                              chats: chats,
                              scrollController: scrollController,
                            );
                          } else {
                            return Builder(builder: (context) {
                              if (ceremonyConsultationHistoriesResponse
                                  .isLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(
                                    color: AppColors.primary1,
                                  ),
                                );
                              }

                              if (ceremonyConsultationHistoriesResponse
                                  .isError) {
                                return const DataEmpty();
                              }

                              if (ceremonyConsultationHistoriesResponse
                                      .isSuccess &&
                                  ceremonyConsultationHistoriesResponse
                                          .data?.data !=
                                      null) {
                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (context, index) {
                                    final ceremonyConsultation =
                                        ceremonyConsultationHitories?[index];

                                    return MaterialButton(
                                      onPressed: () {
                                        PrimaryNavigation.pushFromRight(
                                          context,
                                          page: ConsultationCeremonyScreen(
                                            id: ceremonyConsultation?.id ?? 0,
                                            isNewConsult: false,
                                            ceremonyPackageId: ceremonyConsultation
                                                    ?.ceremonyServicePackageId ??
                                                0,
                                          ),
                                        );
                                      },
                                      padding: EdgeInsets.zero,
                                      child: Container(
                                        width: mediaQuery.size.width,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: AppDimens.paddingLarge,
                                          vertical:
                                              AppDimens.paddingMediumLarge,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      AppColors.primary1,
                                                  radius: AppDimens
                                                      .iconSizeMediumSmall,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    child: CachedNetworkImage(
                                                      imageUrl: AppImages
                                                          .dummyCeremony,
                                                      fit: BoxFit.cover,
                                                      height: double.infinity,
                                                      width: double.infinity,
                                                      progressIndicatorBuilder:
                                                          (context, url,
                                                              downloadProgress) {
                                                        return Shimmer
                                                            .fromColors(
                                                          baseColor: AppColors
                                                              .gray2
                                                              .withOpacity(0.6),
                                                          highlightColor:
                                                              AppColors.light1,
                                                          child:
                                                              const SizedBox(),
                                                        );
                                                      },
                                                      errorWidget: (context,
                                                              url, error) =>
                                                          const SizedBox(),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                    width:
                                                        AppDimens.marginMedium),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      ceremonyConsultation
                                                              ?.ceremonyServiceName ??
                                                          '-',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: AppFontSizes
                                                            .bodyLarge,
                                                      ),
                                                    ),
                                                    Text(
                                                      ceremonyConsultation
                                                              ?.status ??
                                                          '-',
                                                      style: const TextStyle(
                                                        color: AppColors.gray2,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Text(ceremonyConsultation
                                                        ?.lastMessage !=
                                                    null
                                                ? formatTimeOnly(
                                                    ceremonyConsultation
                                                            ?.lastMessage
                                                            ?.createdAt
                                                            .toIso8601String() ??
                                                        '')
                                                : ''),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  itemCount:
                                      ceremonyConsultationHitories?.length ?? 0,
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      height: AppDimens.paddingSmall,
                                    );
                                  },
                                );
                              }

                              return const DataEmpty();
                            });
                          }
                        },
                      ),
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

class ChatView extends StatelessWidget {
  final List<Chat> chats;
  final ScrollController scrollController;

  const ChatView({
    super.key,
    required this.chats,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;

    return Column(
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Opacity(
                opacity: 0.35,
                child: Image.asset(
                  AppImages.ornamen3,
                  width: width,
                  fit: BoxFit.cover,
                ),
              ),
              ListView.builder(
                reverse: true,
                controller: scrollController,
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  final chat = chats[index];
                  return _buildChatMessage(context, chat, width);
                },
              ),
            ],
          ),
        ),
        const ConsultationInput(),
      ],
    );
  }

  Widget _buildChatMessage(BuildContext context, Chat chat, double width) {
    return Container(
      margin: EdgeInsets.only(
        left: !chat.isAdmin ? (width * 0.2) : AppDimens.paddingMedium,
        right: chat.isAdmin ? (width * 0.2) : AppDimens.paddingMedium,
        top: AppDimens.paddingSmall,
        bottom: AppDimens.paddingSmall,
      ),
      child: Column(
        crossAxisAlignment:
            chat.isAdmin ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(AppDimens.paddingMedium),
            decoration: BoxDecoration(
              color: chat.isAdmin ? Colors.white : AppColors.primary1,
              borderRadius: BorderRadius.circular(AppDimens.paddingMedium),
              border: chat.isAdmin
                  ? Border.all(color: AppColors.lightgray2, width: 1)
                  : null,
            ),
            child: Text(
              chat.message,
              style: TextStyle(
                fontSize: AppFontSizes.bodySmall,
                color: chat.isAdmin ? AppColors.primaryText : Colors.white,
              ),
            ),
          ),
          const SizedBox(height: AppDimens.paddingMicro),
          Text(
            "${chat.sendAt.hour}:${chat.sendAt.minute.toString().padLeft(2, '0')}",
            style: const TextStyle(
              fontSize: AppFontSizes.bodySmall,
              color: AppColors.lightgray2,
            ),
          ),
        ],
      ),
    );
  }
}

class ConsultationInput extends StatelessWidget {
  const ConsultationInput({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final locales = AppLocalizations.of(context);

    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.paddingSmall),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: AppDimens.paddingSmall),
                padding: const EdgeInsets.only(
                  left: AppDimens.paddingMedium,
                  right: AppDimens.paddingSmall,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.lightgray2,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(AppDimens.iconSizeLarge),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        autofocus: false,
                        keyboardType: TextInputType.multiline,
                        controller: TextEditingController(),
                        cursorColor: AppColors.primary1,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                            right: AppDimens.paddingSmall,
                          ),
                          border: InputBorder.none,
                          hintText: locales?.typeMessage ?? '',
                          hintStyle: const TextStyle(
                            fontSize: AppFontSizes.bodyMedium,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: AppColors.lightgray2,
                      width: 2,
                      height: AppDimens.paddingLarge,
                    ),
                    IconButton(
                      onPressed: () async {},
                      icon: const Icon(
                        Icons.attach_file_rounded,
                        color: AppColors.lightgray2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconRoundedButton(
              icon: Icons.send_rounded,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
