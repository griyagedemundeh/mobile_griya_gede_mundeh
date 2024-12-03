import 'dart:async';
import 'dart:developer';
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
import 'package:mobile_griya_gede_mundeh/core/widget/bottom_sheet/address_sheet.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/bottom_sheet/primary_bottom_sheet.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/icon_leading_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/icon_rounded_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/toast/primary_toast.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:mobile_griya_gede_mundeh/data/models/address/response/address.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/package/ceremony_package.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/response/ceremony.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/request/message/message_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/consultation/consultation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/message/message.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/ceremony/ceremony_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/controller/auth_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/controller/ceremony_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/ceremony_package_item.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/selected_buttons_package.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/tab_indicator_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/presentation/transaction/screens/detail_transaction_screen.dart';
import 'package:mobile_griya_gede_mundeh/utils/index.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:timeago/timeago.dart';

class ConsultationCeremonyScreen extends HookConsumerWidget
    with WidgetsBindingObserver {
  const ConsultationCeremonyScreen({
    super.key,
    this.ceremonyPackage,
    this.ceremony,
  });

  final CeremonyPackage? ceremonyPackage;
  final Ceremony? ceremony;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final scrollController = useScrollController();
    final locales = AppLocalizations.of(context);
    final messageController = useTextEditingController(
      text: "",
    );
    // final messageTemplate = useState<String>('');

    final SupabaseClient supabase = AppConfig().supabase();
    final SupabaseQueryBuilder dbMessages = supabase.from(
      StorageKey.supabaseConsultCeremonyMessages,
    );
    final SupabaseQueryBuilder dbConsult = supabase.from(
      StorageKey.supabaseConsultCeremony,
    );

    final AuthController authController =
        AuthController(authRepository: AuthRepository());

    final auth = authController.getUser();

    final messagesStream = useState<Stream<List<Message>>?>(null);

    final consultation = useState<Consultation?>(null);

    Future init() async {
      messagesStream.value = dbMessages
          .stream(primaryKey: ['consultationId'])
          .eq('consultationId', 1)
          .order('id', ascending: false)
          .map(
            (maps) => maps.map((map) => Message.fromJson(map)).toList(),
          );

      dbConsult
          .select()
          .eq('consultationId', 1)
          .maybeSingle()
          .then((val) async {
        if (val != null) {
          consultation.value = Consultation.fromJson(val);
          log('${consultation.value}', name: 'CONSULTATION');

          log('${consultation.value?.ceremonyPackageId}',
              name: 'CONSULT PACKE 22');
          log('${ceremonyPackage?.id}', name: 'CONSULT PCAKGE');

          log('sakldsadkjddlksj');
          log('Message --->>  ${(await messagesStream.value?.length ?? 0)}');

          // Set Default Message when user asking for new Consulation or new package
          messageController.text = (consultation.value?.ceremonyPackageId !=
                      ceremonyPackage?.id ||
                  (await messagesStream.value?.length) == 0
              ? 'Halo saya ingin bertanya tentang Paket ${ceremonyPackage?.name} untuk ${ceremony?.title}, Terima kasih!😊'
              : '');
        }
      });
    }

    // Set Default Message when user asking for new Consulation or new package
    // useEffect(() {
    //   log('${ceremonyPackage?.id}', name: 'CEREMONY PACKAGE');
    //   log('${consultation.value?.ceremonyPackageId}',
    //       name: 'CEREMONY PACKAGE CONSULT');

    //   messageController.text = (consultation.value?.ceremonyPackageId !=
    //           ceremonyPackage?.id
    //       ? 'Halo saya ingin bertanya tentang Paket ${ceremonyPackage?.name} untuk ${ceremony?.title}, Terima kasih!😊'
    //       : '');
    //   return null;
    // }, [consultation.value?.ceremonyPackageId]);

    useEffect(() {
      init();

      return null;
    }, [messagesStream.value]);

    void submitMessage(
        {String? message,
        CeremonyPackage? ceremonyPackageChanged,
        Address? address}) async {
      final text = message ?? messageController.text;

      if (text.isEmpty) {
        return;
      }
      messageController.clear();
      try {
        final MessageRequest message = MessageRequest(
          consultationId: 1,
          userId: auth?.id as int,
          isAdmin: false,
          message: text,
          messageType: "default",
          ceremonyPackageId: ceremonyPackageChanged?.id ?? ceremonyPackage?.id,
          ceremonyServiceId: ceremony?.id,
          addressId: address?.id,
          invoiceId: null,
          address: address?.address,
          createdAt: DateTime.now().toIso8601String(),
        );

        await dbMessages.insert(message.toJson());

        init();
      } on PostgrestException catch (error) {
        log("ERROR SEND MESSAGE --->>> ${error.message}");
        PrimaryToast.error(message: error.message);
      } catch (err) {
        log('ERORRklsajdklsajd ${err.toString()}');
        PrimaryToast.error(message: err.toString());
      }
    }

    return Scaffold(
      body: Column(
        children: [
          MeshAppBar(
            title:
                "Konsultasi\n${ceremonyPackage?.name != null ? 'Paket ${ceremonyPackage?.name}' : ''} ${ceremony?.title ?? ''}",
          ),
          Expanded(
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.35,
                  child: Image.asset(
                    AppImages.ornamen3,
                    width: width,
                    fit: BoxFit.cover,
                  ),
                ),
                StreamBuilder<List<Message>>(
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

                            return Container(
                              key: Key("${chat.id}"),
                              margin: EdgeInsets.only(
                                left: !(chat.isAdmin)
                                    ? (width * 0.2)
                                    : AppDimens.paddingMedium,
                                right: (chat.isAdmin)
                                    ? (width * 0.2)
                                    : AppDimens.paddingMedium,
                                top: AppDimens.paddingSmall,
                                bottom: AppDimens.paddingSmall,
                              ),
                              child: Column(
                                crossAxisAlignment: (chat.isAdmin)
                                    ? CrossAxisAlignment.start
                                    : CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(
                                        AppDimens.paddingMedium),
                                    decoration: BoxDecoration(
                                      color: (chat.isAdmin)
                                          ? Colors.white
                                          : AppColors.primary1,
                                      borderRadius: BorderRadius.circular(
                                        AppDimens.paddingMedium,
                                      ),
                                      border: (chat.isAdmin)
                                          ? Border.all(
                                              color: AppColors.lightgray2,
                                              width: 1,
                                            )
                                          : null,
                                    ),
                                    child: chat.messageType == "default"
                                        ? Text(
                                            chat.message,
                                            style: TextStyle(
                                              fontSize: AppFontSizes.bodySmall,
                                              color: (chat.isAdmin)
                                                  ? AppColors.primaryText
                                                  : Colors.white,
                                            ),
                                          )
                                        : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Tagihan Upacara",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize:
                                                      AppFontSizes.bodySmall,
                                                  color: (chat.isAdmin)
                                                      ? AppColors.primaryText
                                                      : Colors.white,
                                                ),
                                              ),
                                              Text(
                                                chat.title ?? '',
                                                style: TextStyle(
                                                  fontSize:
                                                      AppFontSizes.bodySmall,
                                                  color: (chat.isAdmin)
                                                      ? AppColors.primaryText
                                                      : Colors.white,
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  vertical:
                                                      AppDimens.paddingMedium,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "💸Harga: ${formatCurrency(int.parse(chat.totalPrice ?? '0'))}",
                                                      style: TextStyle(
                                                        fontSize: AppFontSizes
                                                            .bodySmall,
                                                        color: (chat.isAdmin)
                                                            ? AppColors
                                                                .primaryText
                                                            : Colors.white,
                                                      ),
                                                    ),
                                                    Text(
                                                      "📅Tanggal dan Waktu: ${chat.ceremonyDate ?? '-'}",
                                                      style: TextStyle(
                                                        fontSize: AppFontSizes
                                                            .bodySmall,
                                                        color: (chat.isAdmin)
                                                            ? AppColors
                                                                .primaryText
                                                            : Colors.white,
                                                      ),
                                                    ),
                                                    Text(
                                                      "📍Lokasi: ${chat.address ?? '-'}",
                                                      style: TextStyle(
                                                        fontSize: AppFontSizes
                                                            .bodySmall,
                                                        color: (chat.isAdmin)
                                                            ? AppColors
                                                                .primaryText
                                                            : Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  SecondaryButton(
                                                    label: locales?.seeDetail ??
                                                        '',
                                                    onTap: () {
                                                      PrimaryNavigation
                                                          .pushFromRight(
                                                        context,
                                                        page:
                                                            DetailTransactionScreen(
                                                          invoiceId:
                                                              chat.invoiceId ??
                                                                  '',
                                                        ),
                                                      );
                                                    },
                                                    isMedium: true,
                                                    isOutline: true,
                                                  ),
                                                  const SizedBox(
                                                      width: AppDimens
                                                          .paddingMedium),
                                                  PrimaryButton(
                                                    label:
                                                        locales?.payNow ?? '',
                                                    onTap: () async {
                                                      Navigator.pop(context);
                                                    },
                                                    isMedium: true,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                  ),
                                  const SizedBox(
                                      height: AppDimens.paddingMicro),
                                  Text(
                                    format(chat.createdAt!),
                                    style: const TextStyle(
                                      fontSize: AppFontSizes.bodySmall,
                                      color: AppColors.lightgray2,
                                    ),
                                  ),
                                ],
                              ),
                            );
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
            ceremony: ceremony,
            onSendMessage: () {
              submitMessage();
            },
            onSelectedCeremonyPackageOrAddress: (ceremonyPackage, address) {
              submitMessage(
                message:
                    "Saya pilih ${ceremonyPackage != null ? 'Paket ${ceremonyPackage.name}' : 'Tanpa Paket/Lainnya'} untuk ${ceremony?.title} di ${address.address}",
                address: address,
                ceremonyPackageChanged: ceremonyPackage,
              );
            },
          ),
        ],
      ),
    );
  }
}

class ConsultationInput extends HookConsumerWidget {
  const ConsultationInput({
    super.key,
    required this.onSendMessage,
    required this.textEditingController,
    required this.ceremony,
    required this.onSelectedCeremonyPackageOrAddress,
  });

  final VoidCallback onSendMessage;
  final TextEditingController textEditingController;
  final Ceremony? ceremony;

  final Function(CeremonyPackage? ceremonyPackage, Address address)
      onSelectedCeremonyPackageOrAddress;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final locales = AppLocalizations.of(context);

    final CeremonyController ceremonyController =
        CeremonyController(ceremonyRepository: CeremonyRepository());

    Future<ApiBaseResponse<List<CeremonyPackage?>?>?>
        getCeremonyPackages() async {
      final response = await ceremonyController.getCeremonyPackages(
        ceremonyServiceId: ceremony?.id ?? 0,
      );

      return response;
    }

    final ceremonyPackagesResponse = useQuery<
        ApiBaseResponse<List<CeremonyPackage?>?>?, ApiBaseResponse<dynamic>>(
      ['ceremonyPackages_${ceremony?.id}'],
      getCeremonyPackages,
    );

    final ceremonyPackages =
        ceremonyPackagesResponse.data?.data as List<CeremonyPackage?>?;

    final selectedCeremonyPackage = useState<CeremonyPackage?>(
        (ceremonyPackages?.isNotEmpty ?? false) ? ceremonyPackages![0] : null);

    final tabController = useTabController(
      initialLength: ceremonyPackages?.length ?? 0,
      keys: [
        ceremonyPackagesResponse.isLoading,
        ceremonyPackages?.length ?? 0,
      ],
    );

    useEffect(() {
      tabController.addListener(() {
        selectedCeremonyPackage.value = ceremonyPackages?[tabController.index];
      });
      return null;
    }, [tabController]);

    showAddressSheet({bool? isForImmediate}) {
      AddressSheet.showSheet(
        context,
        onChange: (address) {
          onSelectedCeremonyPackageOrAddress(
              selectedCeremonyPackage.value, address);

          if ((isForImmediate ?? false)) {
            Navigator.pop(context);
          } else {
            Navigator.pop(context);
            Navigator.pop(context);
          }
        },
      );
    }

    showAddressWithoutPackageSheet() {
      AddressSheet.showSheet(
        context,
        onChange: (address) {
          onSelectedCeremonyPackageOrAddress(null, address);

          Navigator.pop(context);
          Navigator.pop(context);
        },
      );
    }

    openPackageSheet() {
      PrimaryBottomSheet(
        height: height * 0.8,
        content: Column(
          children: [
            Builder(builder: (context) {
              if (ceremonyPackagesResponse.isLoading) {
                return const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primary1,
                    ),
                  ),
                );
              }

              if (ceremonyPackages != null && ceremonyPackages.isNotEmpty) {
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
                        automaticIndicatorColorAdjustment: true,
                        tabs: List.generate(ceremonyPackages.length, (index) {
                          return TabIndicatorItem(
                            label: ceremonyPackages[index]?.name ??
                                '-', // Safe check
                          );
                        }),
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
                      SizedBox(
                        height: height * 0.4,
                        child: TabBarView(
                          controller: tabController,
                          children:
                              List.generate(tabController.length, (index) {
                            final package = ceremonyPackages[index];

                            return ScrollableCeremonyPackageItem(
                              description: package?.description ?? '-',
                              price: package?.price ?? 0,
                            );
                          }),
                        ),
                      ),
                      SelectedButtonsPackage(
                        onTapButtonPrimary: () {
                          showAddressSheet();
                        },
                        onTapButtonSecondary: () {
                          showAddressWithoutPackageSheet();
                        },
                      )
                    ],
                  ),
                );
              }

              return DataEmpty(
                message:
                    "Tidak ada paket untuk ${ceremony?.title ?? 'Upacara Agama ini'}!",
              );
            }),
          ],
        ),
      ).showModalBottom(context);
    }

    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      width: width,
      child: Column(
        children: [
          Row(
            children: [
              IconLeadingButton(
                label: locales?.selectPackage ?? '',
                width: width * 0.5,
                onTap: () {
                  openPackageSheet();
                },
                isFilled: true,
              ),
              IconLeadingButton(
                label: locales?.selectCeremonyLocation ?? '',
                width: width * 0.5,
                icon: Icons.location_on_outlined,
                onTap: () {
                  showAddressSheet(isForImmediate: true);
                },
                isFilled: true,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(
              AppDimens.paddingSmall,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                      right: AppDimens.paddingSmall,
                    ),
                    padding: const EdgeInsets.only(
                      left: AppDimens.paddingMedium,
                      right: AppDimens.paddingSmall,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.lightgray2,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(
                        AppDimens.paddingSmall,
                      ),
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
                            minLines: 1,
                            maxLines: 5,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                  right: AppDimens.paddingSmall,
                                  top: AppDimens.paddingSmall,
                                  bottom: AppDimens.paddingSmall,
                                ),
                                border: InputBorder.none,
                                hintText: locales?.typeMessage ?? '',
                                hintStyle: const TextStyle(
                                  fontSize: AppFontSizes.bodyMedium,
                                )),
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
        ],
      ),
    );
  }
}

class ScrollableCeremonyPackageItem extends StatelessWidget {
  const ScrollableCeremonyPackageItem({
    super.key,
    required this.description,
    required this.price,
  });

  final String description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: CeremonyPackageItem(
          description: description,
          price: price,
        ),
      ),
    );
  }
}
