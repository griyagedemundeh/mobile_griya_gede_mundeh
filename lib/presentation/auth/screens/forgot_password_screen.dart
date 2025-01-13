import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/text_primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/login_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/register_screen.dart';
import 'package:mobile_griya_gede_mundeh/utils/whatsapp_launcher.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ForgotPasswordScreen extends HookConsumerWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);

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
                          'Lupa Kata Sandi?👇',
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
                                      "Jika anda lupa dengan kata sandi anda, silahkan hubungi Admin Griya Gede Mundeh pada Whatsapp di bawah.",
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
                                      icon: const Icon(
                                        Icons.phone,
                                        color: Colors.white,
                                      ),
                                      label: 'Whatsapp Admin',
                                      onTap: () {
                                        WhatsAppLauncher.launchWhatsApp(
                                          phoneNumber:
                                              '+6285954370577', // Include country code
                                          message:
                                              'Hallo admin Griya Gede Mundeh!, saya lupa kata sandi saya, mohon dibantu ya.., terima kasih!😊',
                                        );
                                      },
                                    ),
                                    const SizedBox(
                                      height: AppDimens.paddingMedium,
                                    ),
                                    SecondaryButton(
                                      label: 'Kembali ke Login',
                                      onTap: () {
                                        PrimaryNavigation
                                            .pushFromRightRemoveUntil(
                                          context,
                                          page: const LoginScreen(),
                                        );
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
