import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_validator/form_validator.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/text_primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/input/text_input.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/toast/primary_toast.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/request/register/register_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/controller/auth_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/login_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/screens/main_screen.dart';
import 'package:mobile_griya_gede_mundeh/utils/index.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RegisterScreen extends HookConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);

    final authController = AuthController(authRepository: AuthRepository());

    final isLoading = useState<bool>(false);

    final fullNameController = useTextEditingController();
    final emailController = useTextEditingController();
    final phoneController = useTextEditingController();
    final addressController = useTextEditingController();
    final passwordController = useTextEditingController();
    final passwordConfirmController = useTextEditingController();
    final isPasswordVisible = useState(false);
    final isPasswordConfVisible = useState(false);

    // Error Message
    final fullNameError = useState<String?>(null);
    final emailError = useState<String?>(null);
    final phoneError = useState<String?>(null);
    final addressError = useState<String?>(null);
    final passwordError = useState<String?>(null);
    final passwordConfError = useState<String?>(null);

    final validateFullName =
        ValidationBuilder(requiredMessage: 'Nama lengkap harus diisi!')
            .required()
            .build();

    final validateEmail =
        ValidationBuilder(optional: true).email('Email tidak valid!').build();

    final validatePhonenumber =
        ValidationBuilder(requiredMessage: 'No.Handphone harus diisi!')
            .minLength(10, 'No.Handphone minimal 10 digit!')
            .phone('No.Handphone tidak valid!')
            .build();

    final validateAddress =
        ValidationBuilder(requiredMessage: 'Alamat utama harus diisi!')
            .required()
            .build();

    final validatePassword =
        ValidationBuilder(requiredMessage: 'Kata sandi harus diisi!')
            .required()
            .password()
            .build();

    final validatePasswordConfirm =
        ValidationBuilder(requiredMessage: 'Konfirmasi kata sandi harus diisi!')
            .required()
            .passwordConfirm(password: passwordController.text)
            .build();

    final registerMutation = useMutation<ApiBaseResponse<Auth>,
        ApiBaseResponse<dynamic>, RegisterRequest, void>(
      (registerRequest) async {
        final response =
            await authController.register(registerRequest: registerRequest);
        return response;
      },
      onSuccess: (response, variables, _) {
        isLoading.value = false;

        for (var message in response.message) {
          PrimaryToast.success(message: message);
        }

        PrimaryNavigation.pushFromRightRemoveUntil(
          context,
          page: const LoginScreen(),
        );
      },
      onError: (error, variables, _) {
        isLoading.value = false;

        for (var message in error.message) {
          PrimaryToast.error(message: message);
        }
      },
    );

    Future register() async {
      final data = RegisterRequest(
        address: addressController.text,
        email: emailController.text,
        fullName: fullNameController.text,
        password: passwordController.text,
        passwordConfirm: passwordConfirmController.text,
        phoneNumber: phoneController.text,
      );

      isLoading.value = true;

      registerMutation.mutate(data);
      registerMutation.reset();
    }

    return Scaffold(
      body: SlidingUpPanel(
        minHeight: height * 0.8,
        maxHeight: height,
        parallaxEnabled: true,
        boxShadow: const [
          BoxShadow(
            color: Colors.transparent,
          ),
        ],
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppDimens.iconSizeMediumLarge),
        ),
        body: Image.asset(AppImages.ornamen2),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // First Name
                                TextInput(
                                  controller: fullNameController,
                                  label: locales?.fullname ?? '',
                                  placeHolder: locales?.enterFullname ?? '',
                                  type: TextInputType.name,
                                  autoFill: const [AutofillHints.name],
                                  errorMessage: fullNameError.value,
                                  onChange: (value) {
                                    fullNameError.value =
                                        validateFullName(value);
                                  },
                                ),
                                const SizedBox(
                                  height: AppDimens.borderRadiusLarge,
                                ),
                                TextInput(
                                  controller: emailController,
                                  label:
                                      "${locales?.email ?? ''} ${locales?.optional ?? ''}",
                                  placeHolder: locales?.enterEmail ?? '',
                                  type: TextInputType.emailAddress,
                                  autoFill: const [AutofillHints.email],
                                  errorMessage: emailError.value,
                                  onChange: (value) {
                                    emailError.value = validateEmail(value);
                                  },
                                ),

                                const SizedBox(
                                  height: AppDimens.borderRadiusLarge,
                                ),
                                TextInput(
                                  controller: phoneController,
                                  label: locales?.phone ?? '',
                                  placeHolder: locales?.enterPhone ?? '',
                                  type: TextInputType.phone,
                                  autoFill: const [
                                    AutofillHints.telephoneNumber
                                  ],
                                  errorMessage: phoneError.value,
                                  onChange: (value) {
                                    phoneError.value =
                                        validatePhonenumber(value);
                                  },
                                ),
                                const SizedBox(
                                  height: AppDimens.borderRadiusLarge,
                                ),
                                TextInput(
                                  controller: addressController,
                                  label: locales?.mainAddress ?? '',
                                  placeHolder: locales?.enterMainAddress ?? '',
                                  type: TextInputType.streetAddress,
                                  autoFill: const [
                                    AutofillHints.streetAddressLevel1,
                                    AutofillHints.streetAddressLevel2,
                                    AutofillHints.streetAddressLevel3,
                                    AutofillHints.streetAddressLevel4,
                                  ],
                                  errorMessage: addressError.value,
                                  onChange: (value) {
                                    addressError.value = validateAddress(value);
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
                                  onPasswordTap: () {
                                    isPasswordVisible.value =
                                        !isPasswordVisible.value;
                                  },
                                  errorMessage: passwordError.value,
                                  onChange: (value) {
                                    passwordError.value =
                                        validatePassword(value);
                                  },
                                ),
                                const SizedBox(
                                  height: AppDimens.borderRadiusLarge,
                                ),
                                TextInput(
                                  controller: passwordConfirmController,
                                  label: locales?.confPassword ?? '',
                                  placeHolder: locales?.enterConfPassword ?? '',
                                  isPassword: true,
                                  isPassVisible: isPasswordConfVisible.value,
                                  onPasswordTap: () {
                                    isPasswordConfVisible.value =
                                        !isPasswordConfVisible.value;
                                  },
                                  errorMessage: passwordConfError.value,
                                  onChange: (value) {
                                    passwordConfError.value =
                                        validatePasswordConfirm(value);
                                  },
                                ),
                                const SizedBox(
                                  height: AppDimens.iconSizeLarge,
                                ),
                                PrimaryButton(
                                  label: locales?.register ?? '',
                                  isLoading: isLoading.value,
                                  onTap: () async {
                                    await register();
                                  },
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
                            SizedBox(
                              height: height * 0.5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
