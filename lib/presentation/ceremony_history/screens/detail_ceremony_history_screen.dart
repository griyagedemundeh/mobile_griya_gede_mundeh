import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/input/text_input.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/chip_status.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_top_bar_with_child.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/consultation_ceremony_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony/screens/detail_ceremony_screen.dart';

class DetailCeremonyHistoryScreen extends HookConsumerWidget {
  const DetailCeremonyHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();
    final height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);

    return Scaffold(
      bottomNavigationBar: Container(
        height: height * 0.1,
        padding: const EdgeInsets.all(AppDimens.paddingMedium),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: AppColors.lightgray2.withOpacity(0.5),
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            MaterialButton(
              onPressed: () {},
              minWidth: 0,
              padding: EdgeInsets.zero,
              child: Container(
                padding: const EdgeInsets.all(
                  AppDimens.paddingSmall,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primary1,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(
                    AppDimens.paddingSmall,
                  ),
                ),
                child: const Icon(
                  Icons.more_horiz_rounded,
                  color: AppColors.primary1,
                ),
              ),
            ),
            const SizedBox(
              width: AppDimens.paddingMedium,
            ),
            SecondaryButton(
              label: locales?.detailCeremony ?? '',
              onTap: () {
                PrimaryNavigation.pushFromRight(
                  context,
                  page: const DetailCeremonyScreen(),
                );
              },
              isMedium: true,
              isOutline: true,
            ),
            const SizedBox(
              width: AppDimens.paddingMedium,
            ),
            PrimaryButton(
              label: locales?.consultation ?? '',
              onTap: () {
                PrimaryNavigation.pushFromRight(
                  context,
                  page: const ConsultationCeremonyScreen(),
                );
              },
              isMedium: true,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const MeshTopBarWithChild(
            title: "Mebayuh",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ChipStatus(
                  label: "Persiapan",
                  color: AppColors.primary1,
                  isBig: true,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "24 Juli 2024 - 18:00 WITA",
                      style: TextStyle(
                        fontSize: AppFontSizes.bodySmall,
                      ),
                    ),
                    SizedBox(
                      height: AppDimens.paddingMicro,
                    ),
                    Text(
                      "10 Jam 39 Menit 20 Detik",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(
                AppDimens.marginMedium,
              ),
              child: Column(
                children: [
                  TextInput(
                    controller: textController,
                    label: "Nama Upacara",
                    isEnabled: false,
                  ),
                  const SizedBox(
                    height: AppDimens.paddingMedium,
                  ),
                  TextInput(
                    controller: textController,
                    label: "Lokasi",
                    isEnabled: false,
                  ),
                  const SizedBox(
                    height: AppDimens.paddingMedium,
                  ),
                  TextInput(
                    controller: textController,
                    label: "Pengelola",
                    isEnabled: false,
                  ),
                  const SizedBox(
                    height: AppDimens.paddingMedium,
                  ),
                  TextInput(
                    controller: textController,
                    label: "Pengelola",
                    isEnabled: false,
                  ),
                  const SizedBox(
                    height: AppDimens.paddingMedium,
                  ),
                  TextInput(
                    controller: textController,
                    label: "Catatan",
                    isEnabled: false,
                    maxLines: 5,
                  ),
                  const SizedBox(
                    height: AppDimens.paddingMedium,
                  ),
                  TextInput(
                    controller: textController,
                    label: "Deskripsi Pesanan",
                    isEnabled: false,
                    maxLines: 15,
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
