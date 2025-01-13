import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/text_primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/toast/primary_toast.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/controller/auth_controller.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/login_screen.dart';
import 'package:mobile_griya_gede_mundeh/presentation/auth/screens/register_screen.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class EmailVerificationScreen extends HookConsumerWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);

    final authController = AuthController(authRepository: AuthRepository());
    final isLoading = useState<bool>(false);
    final hasNavigated = useState<bool>(false);

    final resendEmailMutation = useMutation<ApiBaseResponse<dynamic>,
        ApiBaseResponse<dynamic>, dynamic, void>(
      (loginRequest) async {
        final response = await authController.resendEmailVerification();
        return response;
      },
      onSuccess: (response, variables, _) {
        isLoading.value = false;

        for (var message in response.message) {
          PrimaryToast.success(message: message);
        }
      },
      onError: (error, variables, _) {
        isLoading.value = false;

        for (var message in error.message) {
          PrimaryToast.error(message: message);
        }
      },
    );

    Future<ApiBaseResponse> cekStatusEmailVerification() async {
      final response = await authController.cekStatusEmailVerification();
      return response;
    }

    final ceremonyOnProgressResponse = useQuery<ApiBaseResponse, dynamic>(
      ['cekStatusEmail'],
      cekStatusEmailVerification,
      refetchInterval: const Duration(seconds: 3),
    );

    Future resendEmailVerification() async {
      isLoading.value = true;
      resendEmailMutation.mutate({});
      resendEmailMutation.reset();
    }

    useEffect(() {
      if (ceremonyOnProgressResponse.data?.status == 200 &&
          !hasNavigated.value) {
        hasNavigated.value = true;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          PrimaryNavigation.pushFromRightRemoveUntil(
            context,
            page: const LoginScreen(),
          );
        });
      }
      return null;
    }, [ceremonyOnProgressResponse.data]);

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
                                      "Akun anda masih belum terverifikasi. Aplikasi akan otomatis menuju Login apabila verifikasi berhasil",
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
