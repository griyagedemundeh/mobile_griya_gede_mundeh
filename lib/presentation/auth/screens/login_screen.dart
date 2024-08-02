import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/text_primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/input/text_input.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/register_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/screens/main_screen.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);
    final emailPhoneController = useTextEditingController();
    final passwordController = useTextEditingController();
    final isPasswordVisible = useState(false);

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
                    return Form(
                      // key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            locales?.loginNow ?? '',
                            style: const TextStyle(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // First Name
                                      TextInput(
                                        controller: emailPhoneController,
                                        label: locales?.emailOrPhone ?? '',
                                        placeHolder:
                                            locales?.enterEmailOrPhone ?? '',
                                      ),
                                      const SizedBox(
                                        height: AppDimens.borderRadiusLarge,
                                      ),
                                      TextInput(
                                        controller: passwordController,
                                        label: locales?.password ?? '',
                                        placeHolder:
                                            locales?.enterPassword ?? '',
                                        isPassword: true,
                                        isPassVisible: isPasswordVisible.value,
                                        onPasswordTap: () {
                                          isPasswordVisible.value =
                                              !isPasswordVisible.value;
                                        },
                                      ),
                                      TextPrimaryButton(
                                        label: locales?.forgotPassword ?? '',
                                        onTap: () {},
                                      ),
                                      const SizedBox(
                                        height: AppDimens.buttonHeight,
                                      ),

                                      PrimaryButton(
                                        label: locales?.login ?? '',
                                        onTap: () {
                                          PrimaryNavigation.pushFromRight(
                                            context,
                                            page: const MainScreen(),
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
                      ),
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
