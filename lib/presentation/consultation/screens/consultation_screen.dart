import 'dart:async';
import 'dart:developer';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/config/app_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/storage_key.dart';
import 'package:mobile_griya_gede_mundeh/core/store/central_store.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/icon_rounded_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/toast/primary_toast.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/request/consultation/general/general_consultation_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/request/message/general/general_message_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/consultation/ceremony/ceremony_consultation_history.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/consultation/general/general_consultation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/consultation/ticket/general/general_consultation_ticket.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/message/general/general_message.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/consultation/consultation_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/consultation_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/tab_indicator_item.dart';
import 'package:mobile_griya_gede_mundeh/presentation/consultation/controller/consultation_controller.dart';
import 'package:mobile_griya_gede_mundeh/utils/index.dart';
import 'package:shimmer/shimmer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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

    return Scaffold(
      body: Column(
        children: [
          const MeshAppBar(
            title: "Konsultasi",
          ),
          Expanded(
            child: Builder(builder: (context) {
              if (ceremonyConsultationHistoriesResponse.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary1,
                  ),
                );
              }

              if (ceremonyConsultationHistoriesResponse.data?.data.toString() ==
                  '[]') {
                return ChatView(
                  scrollController: scrollController,
                );
              }

              return DefaultTabController(
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
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(
                          tabController.length,
                          (index) {
                            if (tabs[index].toLowerCase() == 'umum') {
                              return ChatView(
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
                                              ceremonyPackageId:
                                                  ceremonyConsultation
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
                                                                .withOpacity(
                                                                    0.6),
                                                            highlightColor:
                                                                AppColors
                                                                    .light1,
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
                                                      width: AppDimens
                                                          .marginMedium),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: mediaQuery
                                                                .size.width *
                                                            0.5,
                                                        child: Text(
                                                          ceremonyConsultation
                                                                  ?.ceremonyServiceName ??
                                                              '-',
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 2,
                                                          style:
                                                              const TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize:
                                                                AppFontSizes
                                                                    .bodyLarge,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        ceremonyConsultation
                                                                ?.status ??
                                                            '-',
                                                        style: const TextStyle(
                                                          color:
                                                              AppColors.gray2,
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
                                        ceremonyConsultationHitories?.length ??
                                            0,
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
              );
            }),
          ),
        ],
      ),
    );
  }
}

class ChatView extends HookConsumerWidget {
  final ScrollController scrollController;

  const ChatView({
    super.key,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;

    final isLoading = useState<bool>(false);

    final CentralStore centralStore = CentralStore(
      authRepository: AuthRepository(),
    );

    final Auth? user = centralStore.getUser();
    final messageController = useTextEditingController(text: '');

    final ConsultationController consultationController =
        ConsultationController(
      consultationRepository: ConsultationRepository(),
    );
    final messagesStream = useState<Stream<List<GeneralMessage>>?>(null);

    final consultation = useState<GeneralConsultation?>(null);

    final SupabaseClient supabase = AppConfig().supabase();
    final SupabaseQueryBuilder dbConsult = supabase.from(
      StorageKey.supabaseConsultGeneral,
    );
    final SupabaseQueryBuilder dbMessages = supabase.from(
      StorageKey.supabaseConsultGeneralMessages,
    );

    final SupabaseQueryBuilder dbNewGeneralConsultIndicator =
        supabase.from(StorageKey.supabaseNewGeneralConsultationIndicator);

    Future initConult({required int id}) async {
      messagesStream.value = dbMessages
          .stream(primaryKey: ['consultationId'])
          .eq(
            'consultationId',
            id,
          )
          .order('id', ascending: false)
          .map(
            (maps) => maps.map((map) => GeneralMessage.fromJson(map)).toList(),
          );

      dbConsult
          .select()
          .eq('consultationId', id)
          .maybeSingle()
          .then((val) async {
        if (val != null) {
          consultation.value = GeneralConsultation.fromJson(val);
        }
      });
    }

    Future<void> createConsultationToSupabase({required int id}) async {
      try {
        final dataConsult = await dbConsult
            .select()
            .eq(
              'consultationId',
              id,
            )
            .maybeSingle();

        if (dataConsult == null) {
          final GeneralConsultationRequest generalConsultationRequest =
              GeneralConsultationRequest(
            createdAt: DateTime.now().toIso8601String(),
            consultationId: id,
            userId: user?.id ?? 0,
            userName: user?.fullName ?? '',
            userPhoto: user?.avatarUrl ?? '',
          );

          await dbConsult.insert(generalConsultationRequest.toJson());

          await initConult(id: id);
        } else {
          await initConult(id: id);
        }
      } on PostgrestException catch (error) {
        log("ERROR CREATE CONSULTATION --->>> ${error.message}");
        PrimaryToast.error(message: error.message);
      } catch (err) {
        log('ERORR ${err.toString()}');
        PrimaryToast.error(message: err.toString());
      }
    }

    final createConsultationMutation = useMutation<
        ApiBaseResponse<GeneralConsultationTicket>, dynamic, int, void>(
      (memberId) async {
        final response = await consultationController
            .createGeneralConsultation(memberId: memberId)
            .then((e) async {
          await createConsultationToSupabase(
            id: (e.data as GeneralConsultationTicket).id,
          );
        });

        return response;
      },
      onSuccess: (response, variables, _) {
        isLoading.value = false;
      },
      onError: (error, variables, _) {
        log('$error', name: 'ERROR GENERAL CONSULT');
        isLoading.value = false;
      },
    );

    Future createConsultationTicket() async {
      isLoading.value = true;
      await createConsultationMutation.mutate(user?.id ?? 0);
      createConsultationMutation.reset();
    }

    useEffect(() {
      // create or get initial general consultation
      createConsultationTicket();
      return null;
    }, []);

    useEffect(() {
      // get consult if consultation is existed
      if (consultation.value != null) {
        initConult(id: consultation.value?.consultationId ?? 0);
      }
      return null;
    }, [messagesStream.value, consultation.value]);

    Future<void> submitMessage() async {
      final text = messageController.text;

      if (text.isEmpty) {
        return;
      }
      messageController.clear();
      try {
        final GeneralMessageRequest message = GeneralMessageRequest(
          createdAt: DateTime.now().toIso8601String(),
          consultationId: consultation.value?.consultationId ?? 0,
          userId: user?.id ?? 0,
          message: text,
          isAdmin: false,
        );

        await dbMessages.insert(message.toJson());

        var consult = GeneralConsultation(
          id: consultation.value?.id ?? 0,
          createdAt: consultation.value?.createdAt ?? '',
          isRead: false,
          consultationId: consultation.value?.consultationId ?? 0,
          userId: consultation.value?.userId ?? 0,
          userName: consultation.value?.userName ?? '',
          userPhoto: consultation.value?.userPhoto ?? '',
          updatedAt: DateTime.now().toIso8601String(),
        );

        await dbNewGeneralConsultIndicator.update({"isNew": true}).eq("id", 1);

        await dbConsult.update(consult.toJson()).eq(
              'consultationId',
              consultation.value?.consultationId ?? 0,
            );

        initConult(id: consultation.value?.consultationId ?? 0);
      } on PostgrestException catch (error) {
        PrimaryToast.error(message: error.message);
      } catch (err) {
        PrimaryToast.error(message: err.toString());
      }
    }

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
              StreamBuilder<List<GeneralMessage>>(
                  stream: messagesStream.value,
                  builder: (context, snapshot) {
                    if ((snapshot.data?.isEmpty ?? false)) {
                      return const DataEmpty(
                        message:
                            "Belum ada pesan,\nayo kirimkan pesanmu sekarang!",
                      );
                    }

                    if (snapshot.hasData) {
                      final messages = snapshot.data!;
                      return ListView.builder(
                        reverse: true,
                        controller: scrollController,
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          final chat = messages[index];
                          return _buildChatMessage(context, chat, width);
                        },
                      );
                    }

                    return const DataEmpty();
                  }),
            ],
          ),
        ),
        ConsultationInput(
          textEditingController: messageController,
          onSendMessage: () async {
            await submitMessage();
          },
        ),
      ],
    );
  }

  Widget _buildChatMessage(
      BuildContext context, GeneralMessage chat, double width) {
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
            formatTimeOnly(chat.createdAt.toString()),
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
  const ConsultationInput(
      {super.key,
      required this.textEditingController,
      required this.onSendMessage});

  final TextEditingController textEditingController;
  final VoidCallback onSendMessage;

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
                        controller: textEditingController,
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
              onTap: onSendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
