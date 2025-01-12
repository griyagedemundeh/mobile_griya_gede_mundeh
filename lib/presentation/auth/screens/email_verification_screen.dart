import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/text_primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/controller/auth_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/register_screen.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class EmailVerificationScreen extends HookConsumerWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);

    final authController = AuthController(authRepository: AuthRepository());
    final isLoading = useState<bool>(false);

    Future resendEmailVerification() async {
      isLoading.value = true;
    }

    Future cekStatusEmailVerification() async {
      isLoading.value = true;
    }

    return Scaffold(
      body: SlidingUpPanel(
        minHeight: height * 0.8,
        maxHeight: height,
        parallaxEnabled: true,
        backdropEnabled: true,
        boxShadow: const [
          BoxShadow(
            color: Colors.transparent,
          ),
        ],
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppDimens.iconSizeMediumLarge),
        ),
        body: Image.asset(AppImages.ornamen1),
        panelBuilder: (sc) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: AppDimens.iconSizeMedium,
                  bottom: height * 0.1,
                ),
                height: height,
                width: width,
                child: Builder(
                  builder: (context) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Verifikasi Email👇',
                          style: TextStyle(
                            fontSize: AppFontSizes.headlineSmall,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        Expanded(
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.all(
                              AppDimens.iconSizeMedium,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // First Name
                                    const Text(
                                      "Akun anda masih belum terverifikasi, segera verifikasi untuk menggunakan aplikasi!",
                                      style: TextStyle(),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      height: AppDimens.borderRadiusLarge,
                                    ),

                                    const SizedBox(
                                      height: AppDimens.buttonHeight,
                                    ),

                                    PrimaryButton(
                                      label: 'Kirim Verifikasi Email',
                                      isLoading: isLoading.value,
                                      onTap: () {
                                        resendEmailVerification();
                                      },
                                    ),
                                    const SizedBox(
                                      height: AppDimens.paddingMedium,
                                    ),
                                    SecondaryButton(
                                      label: 'Kembali ke Login',
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    SizedBox(height: height * 0.2),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      locales?.dontHaveAccountYet ?? '',
                                      style: const TextStyle(
                                        fontSize: AppFontSizes.bodySmall,
                                      ),
                                    ),
                                    TextPrimaryButton(
                                      label: locales?.registerHere ?? '',
                                      onTap: () {
                                        PrimaryNavigation.pushFromRight(
                                          context,
                                          page: const RegisterScreen(),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
