import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/text_primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/input/text_input.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/login_screen.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RegisterScreen extends HookConsumerWidget {
  const RegisterScreen({super.key});

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
        parallaxOffset: 0.3,
        boxShadow: const [
          BoxShadow(
            color: Colors.transparent,
          ),
        ],
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppDimens.iconSizeLarge),
        ),
        body: const Center(
          child: Text("This is the Widget behind the sliding panel"),
        ),
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
                            locales?.createNewAccount ?? '',
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
                                        label: locales?.fullname ?? '',
                                        placeHolder:
                                            locales?.enterFullname ?? '',
                                        type: TextInputType.name,
                                      ),
                                      const SizedBox(
                                        height: AppDimens.borderRadiusLarge,
                                      ),
                                      TextInput(
                                        controller: emailPhoneController,
                                        label:
                                            "${locales?.email ?? ''} ${locales?.optional ?? ''}",
                                        placeHolder: locales?.enterEmail ?? '',
                                        type: TextInputType.emailAddress,
                                      ),
                                      const SizedBox(
                                        height: AppDimens.borderRadiusLarge,
                                      ),
                                      TextInput(
                                        controller: emailPhoneController,
                                        label: locales?.phone ?? '',
                                        placeHolder: locales?.enterPhone ?? '',
                                        type: TextInputType.phone,
                                      ),
                                      const SizedBox(
                                        height: AppDimens.borderRadiusLarge,
                                      ),
                                      TextInput(
                                        controller: emailPhoneController,
                                        label: locales?.mainAddress ?? '',
                                        placeHolder:
                                            locales?.enterMainAddress ?? '',
                                        type: TextInputType.streetAddress,
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
                                      const SizedBox(
                                        height: AppDimens.borderRadiusLarge,
                                      ),
                                      TextInput(
                                        controller: passwordController,
                                        label: locales?.confPassword ?? '',
                                        placeHolder:
                                            locales?.enterConfPassword ?? '',
                                        isPassword: true,
                                        isPassVisible: isPasswordVisible.value,
                                        onPasswordTap: () {
                                          isPasswordVisible.value =
                                              !isPasswordVisible.value;
                                        },
                                      ),
                                      const SizedBox(
                                        height: AppDimens.iconSizeLarge,
                                      ),
                                      PrimaryButton(
                                        label: locales?.login ?? '',
                                        onTap: () {},
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        locales?.haveAccount ?? '',
                                        style: const TextStyle(
                                          fontSize: AppFontSizes.bodySmall,
                                        ),
                                      ),
                                      TextPrimaryButton(
                                        label: locales?.loginHere ?? '',
                                        onTap: () {
                                          PrimaryNavigation.pushFromRight(
                                            context,
                                            page: const LoginScreen(),
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
