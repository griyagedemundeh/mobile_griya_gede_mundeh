import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/store/central_store.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/toast/primary_toast.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_top_bar_with_child.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/onboarding/screens/onboarding_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/setting/controller/setting_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/setting/screens/profile_screen.dart';
import 'package:mobile_griya_gede_mundeh/utils/whatsapp_launcher.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

    final SettingController settingController =
        SettingController(authRepository: AuthRepository());

    logout() {
      settingController.logout();

      PrimaryToast.success(message: "Berhasil keluar!");

      PrimaryNavigation.pushFromRightRemoveUntil(
        context,
        page: const OnboardingScreen(),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          // const TopBarBeforeLogin(),
          const TopBarAfterLogin(),
          SingleChildScrollView(
            padding: const EdgeInsets.only(
              top: AppDimens.paddingMedium,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.paddingSmall,
                  ),
                  child: Column(
                    children: [
                      SettingButton(
                        label: 'Tanya Admin di Whatsapp',
                        icon: AppImages.icFaq,
                        onTap: () {
                          WhatsAppLauncher.launchWhatsApp(
                            phoneNumber: '+6285954370577',
                            message:
                                'Hallo admin Griya Gede Mundeh!, saya ingin bertanya...😊',
                          );
                        },
                      ),
                      // const DividerSettingButton(),
                      // SettingButton(
                      //   label: locales?.tnc ?? '',
                      //   icon: AppImages.icFile,
                      //   onTap: () {},
                      // ),
                      // const DividerSettingButton(),
                      // SettingButton(
                      //   label: locales?.aboutUs ?? '',
                      //   icon: AppImages.icInfo,
                      //   onTap: () {},
                      // ),
                      const DividerSettingButton(),
                      SettingButton(
                        label: locales?.logout ?? '',
                        icon: AppImages.icLogout,
                        onTap: () {
                          logout();
                        },
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppDimens.marginMedium,
                  ),
                  child: Divider(
                    color: AppColors.lightgray,
                    height: AppDimens.marginMedium,
                    thickness: AppDimens.marginMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.paddingMedium,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        locales?.findUsOnSocialMedia ?? '',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TopBarAfterLogin extends HookConsumerWidget {
  const TopBarAfterLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double paddingTop = MediaQuery.of(context).padding.top;

    final CentralStore centralStore =
        CentralStore(authRepository: AuthRepository());

    final Auth? user = centralStore.getUser();

    return Stack(
      children: [
        MeshPrimaryTopBarSecondary(
          height: height * 0.15,
        ),
        Container(
          width: width,
          margin: EdgeInsets.only(
            top: paddingTop,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.paddingLarge,
            vertical: AppDimens.paddingMedium,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.primary1,
                    radius: AppDimens.iconSizeMediumSmall,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: CachedNetworkImage(
                        imageUrl: user?.avatarUrl ?? AppImages.dummy,
                        fit: BoxFit.scaleDown,
                        height: double.infinity,
                        width: double.infinity,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) {
                          return Shimmer.fromColors(
                            baseColor: AppColors.gray2.withOpacity(0.6),
                            highlightColor: AppColors.light1,
                            child: const SizedBox(),
                          );
                        },
                        errorWidget: (context, url, error) => const SizedBox(),
                      ),
                    ),
                  ),
                  const SizedBox(width: AppDimens.marginMedium),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user?.fullName ?? '-',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppFontSizes.bodyLarge,
                        ),
                      ),
                      const Text(
                        "Sesuaikan profilmu disini!",
                        style: TextStyle(
                          color: AppColors.gray2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {
                  PrimaryNavigation.pushFromRight(
                    context,
                    page: const ProfileScreen(),
                  );
                },
                height: AppDimens.iconSizeLarge,
                minWidth: AppDimens.iconSizeMedium,
                padding: const EdgeInsets.all(4),
                clipBehavior: Clip.hardEdge,
                shape: const StadiumBorder(),
                child: SvgPicture.asset(
                  AppImages.icEdit,
                  height: AppDimens.paddingMedium,
                  width: AppDimens.paddingMedium,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TopBarBeforeLogin extends StatelessWidget {
  const TopBarBeforeLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return MeshTopBarWithChild(
      isWihoutBack: true,
      height: height * 0.25,
      child: SizedBox(
        child: Column(
          children: [
            const CircleAvatar(
              radius: AppDimens.iconSizeMediumLarge,
              backgroundImage: AssetImage(
                AppImages.onboarding1,
              ),
            ),
            const SizedBox(height: AppDimens.paddingSmall),
            MaterialButton(
              onPressed: () {},
              color: AppColors.primary1,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    AppDimens.marginSmall,
                  ),
                ),
              ),
              elevation: 0,
              child: const Text(
                "Mulai Sekarang!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: AppFontSizes.bodySmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DividerSettingButton extends StatelessWidget {
  const DividerSettingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.gray1,
      height: 1,
    );
  }
}

class SettingButton extends StatelessWidget {
  const SettingButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
              ),
              const SizedBox(width: AppDimens.paddingMedium),
              Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  // fontSize: AppFontSizes.bodySmall,
                ),
              ),
            ],
          ),
          Icon(
            Icons.chevron_right_rounded,
            color: AppColors.gray2.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
