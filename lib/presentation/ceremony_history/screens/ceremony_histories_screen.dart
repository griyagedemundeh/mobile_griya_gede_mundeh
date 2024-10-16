import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/input/search_input.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/ceremony_card.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_top_bar_with_child.dart';
import 'package:mobile_griya_gede_mundeh/presentation/ceremony_history/screens/detail_ceremony_history_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CeremonyHistory {
  String ceremonyTitle;
  String ceremonyType;
  String countDown;
  String date;
  String location;
  String status;
  String time;

  CeremonyHistory({
    required this.ceremonyTitle,
    required this.ceremonyType,
    required this.countDown,
    required this.date,
    required this.location,
    required this.status,
    required this.time,
  });
}

class CeremonyHistoriesScreen extends StatelessWidget {
  const CeremonyHistoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

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

    return Scaffold(
      body: Column(
        children: [
          MeshTopBarWithChild(
            title: locales?.ceremonyHistory ?? '',
            isWihoutBack: true,
            child: SearchInput(
              placeHolder: locales?.searchCeremonyHistory ?? '',
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(
                AppDimens.paddingMedium,
              ),
              itemCount: ceremonyHistories.length,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: AppDimens.paddingMedium,
                );
              },
              itemBuilder: (context, index) {
                final cermonyHistory = ceremonyHistories[index];
                return CermonyCard(
                  ceremonyTitle: cermonyHistory.ceremonyTitle,
                  ceremonyType: cermonyHistory.ceremonyType,
                  countDown: cermonyHistory.countDown,
                  date: cermonyHistory.date,
                  location: cermonyHistory.location,
                  status: cermonyHistory.status,
                  time: cermonyHistory.time,
                  onTap: () {
                    PrimaryNavigation.pushFromRight(
                      context,
                      page: const DetailCeremonyHistoryScreen(),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
