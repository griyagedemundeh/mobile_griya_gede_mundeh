import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_validator/form_validator.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/router/routers.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/text_primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/input/text_input.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/toast/primary_toast.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/request/login/login_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/controller/auth_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/email_verification_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/forgot_password_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/register_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/screens/main_screen.dart';
import 'package:mobile_griya_gede_mundeh/utils/index.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);
    final userIdentifierController = useTextEditingController();
    final passwordController = useTextEditingController();
    final isPasswordVisible = useState(false);

    final authController = AuthController(authRepository: AuthRepository());
    final isLoading = useState<bool>(false);

    // Error Message
    final userIdentifierError = useState<String?>(null);
    final passwordError = useState<String?>(null);

    final validateUserIdentifier =
        ValidationBuilder(requiredMessage: 'Email/No.Handphone harus diisi!')
            .required()
            .build();

    final validatePassword =
        ValidationBuilder(requiredMessage: 'Kata sandi harus diisi!')
            .required()
            .password()
            .build();

    final loginMutation = useMutation<ApiBaseResponse<Auth>,
        ApiBaseResponse<dynamic>, LoginRequest, void>(
      (loginRequest) async {
        final response = await authController.login(loginRequest: loginRequest);
        return response;
      },
      onSuccess: (response, variables, _) {
        isLoading.value = false;

        for (var message in response.message) {
          PrimaryToast.success(message: message);
        }

        if ((response.data)['emailVerified'] == 0) {
          PrimaryNavigation.pushFromRight(
            context,
            page: const EmailVerificationScreen(),
          );
        } else {
          PrimaryNavigation.pushFromRightRemoveUntil(
            context,
            page: const MainScreen(),
          );
        }
      },
      onError: (error, variables, _) {
        isLoading.value = false;

        for (var message in error.message) {
          PrimaryToast.error(message: message);
        }
      },
    );

    Future login() async {
      final data = LoginRequest(
        userIdentifier: userIdentifierController.text,
        password: passwordController.text,
      );

      isLoading.value = true;

      loginMutation.mutate(data);
      loginMutation.reset();
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // First Name
                                    TextInput(
                                      controller: userIdentifierController,
                                      label: locales?.emailOrPhone ?? '',
                                      placeHolder:
                                          locales?.enterEmailOrPhone ?? '',
                                      errorMessage: userIdentifierError.value,
                                      onChange: (value) {
                                        userIdentifierError.value =
                                            validateUserIdentifier(value);
                                      },
                                    ),
                                    const SizedBox(
                                      height: AppDimens.borderRadiusLarge,
                                    ),
                                    TextInput(
                                      controller: passwordController,
                                      label: locales?.password ?? '',
                                      placeHolder: locales?.enterPassword ?? '',
                                      isPassword: true,
                                      isPassVisible: isPasswordVisible.value,
                                      errorMessage: passwordError.value,
                                      onChange: (value) {
                                        passwordError.value =
                                            validatePassword(value);
                                      },
                                      onPasswordTap: () {
                                        isPasswordVisible.value =
                                            !isPasswordVisible.value;
                                      },
                                    ),
                                    TextPrimaryButton(
                                      label: locales?.forgotPassword ?? '',
                                      onTap: () {
                                        PrimaryNavigation.pushFromRight(
                                          context,
                                          page: const ForgotPasswordScreen(),
                                        );
                                      },
                                    ),
                                    const SizedBox(
                                      height: AppDimens.buttonHeight,
                                    ),

                                    PrimaryButton(
                                      label: locales?.login ?? '',
                                      isLoading: isLoading.value,
                                      onTap: () {
                                        login();
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
