import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/toast/primary_toast.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/package/ceremony_package.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/response/ceremony.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/request/message_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/message.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/controller/auth_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/ceremony_package_item.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/selected_buttons_package.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/tab_indicator_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ConsultationCeremonyScreen extends HookConsumerWidget {
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
    final messageController = useTextEditingController(
      text:
          "Halo saya ingin bertanya tentang Paket ${ceremonyPackage?.name} untuk ${ceremony?.title}, Terima kasih!😊",
    );

    final SupabaseClient supabase = AppConfig().supabase();
    final SupabaseQueryBuilder db = supabase.from(
      StorageKey.supabaseConsultCeremony,
    );

    final AuthController authController =
        AuthController(authRepository: AuthRepository());

    final auth = authController.getUser();

    final messagesStream = useState<Stream<List<Message>>?>(null);

    useEffect(() {
      messagesStream.value = db
          .stream(primaryKey: ['id', 'consultationId'])
          .order('created_at')
          .map(
            (maps) => maps.map((map) => Message.fromJson(map)).toList(),
          );
      return null;
    }, []);

    void submitMessage() async {
      final text = messageController.text;

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
          ceremonyPackageId: ceremonyPackage?.id,
          ceremonyServiceId: ceremony?.id,
          invoiceId: null,
          created_at: DateTime.now().toIso8601String(),
        );

        await db.insert(message.toJson());
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
            title: "Konsultasi ${ceremony?.title ?? ''}",
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
                              margin: EdgeInsets.only(
                                left: !chat.isAdmin
                                    ? (width * 0.2)
                                    : AppDimens.paddingMedium,
                                right: chat.isAdmin
                                    ? (width * 0.2)
                                    : AppDimens.paddingMedium,
                                top: AppDimens.paddingSmall,
                                bottom: AppDimens.paddingSmall,
                              ),
                              child: Column(
                                crossAxisAlignment: chat.isAdmin
                                    ? CrossAxisAlignment.start
                                    : CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(
                                        AppDimens.paddingMedium),
                                    decoration: BoxDecoration(
                                      color: chat.isAdmin
                                          ? Colors.white
                                          : AppColors.primary1,
                                      borderRadius: BorderRadius.circular(
                                        AppDimens.paddingMedium,
                                      ),
                                      border: chat.isAdmin
                                          ? Border.all(
                                              color: AppColors.lightgray2,
                                              width: 1,
                                            )
                                          : null,
                                    ),
                                    child: Text(
                                      chat.message,
                                      style: TextStyle(
                                        fontSize: AppFontSizes.bodySmall,
                                        color: chat.isAdmin
                                            ? AppColors.primaryText
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                      height: AppDimens.paddingMicro),
                                  Text(
                                    // "${chat.sendAt.hour}:${chat.sendAt.minute}",
                                    "${chat.created_at?.toLocal()}:",
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
            onSendMessage: () {
              submitMessage();
            },
          ),
        ],
      ),
    );
  }
}

class ConsultationInput extends StatelessWidget {
  const ConsultationInput({
    super.key,
    required this.onSendMessage,
    required this.textEditingController,
  });

  final VoidCallback onSendMessage;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final locales = AppLocalizations.of(context);

    showAddressSheet() {
      AddressSheet.showSheet(context);
    }

    openPackageSheet() {
      PrimaryBottomSheet(
        height: height * 0.8,
        content: Column(
          children: [
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  const TabBar(
                    labelColor: AppColors.dark1,
                    tabAlignment: TabAlignment.center,
                    isScrollable: true,
                    dividerColor: AppColors.gray1,
                    automaticIndicatorColorAdjustment: true,
                    tabs: [
                      TabIndicatorItem(label: "Paket 1"),
                      TabIndicatorItem(label: "Paket 2"),
                      TabIndicatorItem(label: "Paket 3"),
                    ],
                    indicator: UnderlineTabIndicator(
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
                    child: const TabBarView(
                      children: [
                        ScrollableCeremonyPackageItem(),
                        ScrollableCeremonyPackageItem(),
                        ScrollableCeremonyPackageItem(),
                      ],
                    ),
                  ),
                  SelectedButtonsPackage(
                    labelSecondary: locales?.cancel ?? '',
                    onTapButtonPrimary: () {
                      showAddressSheet();
                    },
                    onTapButtonSecondary: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ).showModalBottom(context);
    }

    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      width: width,
      child: Column(
        children: [
          IconLeadingButton(
            label: locales?.selectPackage ?? '',
            onTap: () {
              openPackageSheet();
            },
            isFilled: true,
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
  });

  @override
  Widget build(BuildContext context) {
    return const Scrollbar(
      child: SingleChildScrollView(
        child: CeremonyPackageItem(
          description: '',
          price: 0,
        ),
      ),
    );
  }
}
