import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/icon_rounded_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/widget/ceremony_package.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Chat {
  final String id;
  final String message;
  final bool isAdmin;
  final DateTime sendAt;

  Chat(
      {required this.id,
      required this.message,
      required this.isAdmin,
      required this.sendAt});
}

class ConsultationScreen extends HookConsumerWidget {
  const ConsultationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final scrollController = useScrollController();

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
      Chat(
        id: "3",
        message: "Ya, saya berminat menambahkan layanan dokumentasi.",
        isAdmin: false,
        sendAt: DateTime.now(),
      ),
      Chat(
        id: "4",
        message: "Berarti berapa total biaya yang harus saya bayarkan?",
        isAdmin: false,
        sendAt: DateTime.now(),
      ),
      Chat(
        id: "5",
        message:
            "Halo kakak😁. Paket 2 ini mencakup persiapan dan pelaksanaan upacara Metatah, termasuk sesajen dan pemangku. Dokumentasi foto dan video bisa ditambahkan dengan biaya tambahan sebesar Rp 500.000. Apakah Anda berminat untuk menambahkan layanan dokumentasi?",
        isAdmin: true,
        sendAt: DateTime.now(),
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          const MeshAppBar(
            title: "Konsultasi",
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
                ListView.builder(
                  reverse: true,
                  controller: scrollController,
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    final chat = chats[index];

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
                            padding:
                                const EdgeInsets.all(AppDimens.paddingMedium),
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
                          const SizedBox(height: AppDimens.paddingMicro),
                          Text(
                            "${chat.sendAt.hour}:${chat.sendAt.minute}",
                            style: const TextStyle(
                              fontSize: AppFontSizes.bodySmall,
                              color: AppColors.lightgray2,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const ConsultationInput(),
        ],
      ),
    );
  }
}

class ConsultationInput extends StatelessWidget {
  const ConsultationInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final locales = AppLocalizations.of(context);

    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      width: width,
      child: Column(
        children: [
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
                        AppDimens.iconSizeLarge,
                      ),
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
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollableCeremonyPackage extends StatelessWidget {
  const ScrollableCeremonyPackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scrollbar(
      child: SingleChildScrollView(
        child: CeremonyPackage(),
      ),
    );
  }
}
