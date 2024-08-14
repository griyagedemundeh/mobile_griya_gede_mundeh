import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/input/search_input.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/chip_status.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_top_bar_secondary.dart';

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
          const MeshTopBarSecondary(
            title: "Riwayat Upacara",
            isWihoutBack: true,
            child: SearchInput(
              placeHolder: "Cari riwayat upacara",
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(
                AppDimens.paddingMedium,
              ),
              itemCount: 10,
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
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CermonyCard extends StatelessWidget {
  const CermonyCard({
    super.key,
    required this.location,
    required this.ceremonyType,
    required this.ceremonyTitle,
    required this.date,
    required this.time,
    required this.countDown,
    required this.onTap,
    required this.status,
  });

  final String location;
  final String ceremonyType;
  final String ceremonyTitle;
  final String date;
  final String time;
  final String countDown;
  final String status;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return MaterialButton(
      onPressed: onTap,
      elevation: 0,
      padding: EdgeInsets.zero,
      child: Container(
        width: width,
        padding: const EdgeInsets.all(
          AppDimens.paddingSmall,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.gray1,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(
            AppDimens.paddingSmall,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImages.icCeremonyLocation),
                const SizedBox(width: AppDimens.paddingSmall),
                Expanded(
                  child: Text(
                    location,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: AppFontSizes.bodySmall,
                      color: AppColors.gray2,
                    ),
                  ),
                ),
                const SizedBox(width: AppDimens.paddingMedium),
                ChipStatus(
                  label: status,
                  color: AppColors.primary1,
                ),
              ],
            ),
            const SizedBox(
              height: AppDimens.iconSizeMediumSmall,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ceremonyType,
                  style: const TextStyle(
                    fontSize: AppFontSizes.bodySmall,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: AppDimens.paddingSmall,
                ),
                SizedBox(
                  width: width * 0.6,
                  child: Text(
                    ceremonyTitle,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: AppFontSizes.bodyLarge,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppDimens.paddingMicro,
                ),
                MetaCeremonyHistory(
                  icon: AppImages.icDate,
                  data: date,
                ),
                const SizedBox(
                  height: AppDimens.paddingMicro,
                ),
                MetaCeremonyHistory(
                  icon: AppImages.icTime,
                  data: time,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: AppDimens.paddingMedium,
                bottom: AppDimens.paddingSmall,
              ),
              child: Divider(
                color: AppColors.gray1,
                height: 1,
                thickness: 1,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  countDown,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const RoundedPrimaryButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedPrimaryButton extends StatelessWidget {
  const RoundedPrimaryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingMedium,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            100,
          ),
        ),
      ),
      onPressed: () {},
      color: AppColors.primary1,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Selengkapnya",
            style: TextStyle(
              color: Colors.white,
              fontSize: AppFontSizes.bodyMedium,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.chevron_right_rounded,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class MetaCeremonyHistory extends StatelessWidget {
  const MetaCeremonyHistory({
    super.key,
    required this.icon,
    required this.data,
  });

  final String icon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          color: AppColors.gray2,
        ),
        const SizedBox(
          width: AppDimens.paddingSmall,
        ),
        Text(
          data,
          style: const TextStyle(
            color: AppColors.gray2,
            fontSize: AppFontSizes.bodySmall,
          ),
        ),
      ],
    );
  }
}
