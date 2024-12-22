import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/store/central_store.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/input/text_input.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/data_empty.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/switch/labeled_switch_input.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/profile/response/profile.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/profile/profile_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/setting/controller/setting_controller.dart';
import 'package:shimmer/shimmer.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);
    final isPasswordVisible = useState(false);
    final isChangePassword = useState(false);

    final CentralStore centralStore =
        CentralStore(authRepository: AuthRepository());

    final SettingController settingController = SettingController(
      profileRepository: ProfileRepository(),
    );

    final Auth? user = centralStore.getUser();

    Future<ApiBaseResponse<Profile?>?> getProfile() async {
      final response = await settingController.getProfile(id: user?.id ?? 0);
      return response;
    }

    final profileResponse = useQuery<ApiBaseResponse<Profile?>?, dynamic>(
      ['profile_${user?.id}'],
      getProfile,
    );

    final profile = profileResponse.data?.data as Profile?;

    final nameController = useTextEditingController(text: "");
    final emailController = useTextEditingController(text: "");
    final phoneController = useTextEditingController(text: "");
    final mainAddressController = useTextEditingController(text: "");
    final passwordController = useTextEditingController();

    useEffect(() {
      nameController.text = profile?.user.fullName ?? '';
      emailController.text = profile?.user.email ?? '';
      phoneController.text = profile?.user.phoneNumber ?? '';
      mainAddressController.text = profile?.memberAddress[0].address ?? '';
      return null;
    }, [profileResponse]);

    return Scaffold(
      bottomNavigationBar: Container(
        height: height * 0.1,
        padding: const EdgeInsets.all(AppDimens.paddingMedium),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: AppColors.lightgray2.withOpacity(0.2),
              spreadRadius: 2,
            ),
          ],
        ),
        child: PrimaryButton(
          label: locales?.save ?? '',
          onTap: () {},
        ),
      ),
      body: Column(
        children: [
          MeshAppBar(
            title: locales?.editProfile ?? '',
            isWihoutInfo: true,
          ),
          Expanded(
            child: Builder(builder: (context) {
              if (profileResponse.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary1,
                  ),
                );
              }

              if (profileResponse.isError) {
                return const DataEmpty();
              }

              if (profileResponse.isSuccess &&
                  profileResponse.data?.data != null) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(
                    AppDimens.paddingMedium,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: AppDimens.marginLarge),
                      CircleAvatar(
                        backgroundColor: AppColors.primary1,
                        radius: AppDimens.iconSizeLarge,
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
                            errorWidget: (context, url, error) =>
                                const SizedBox(),
                          ),
                        ),
                      ),
                      const SizedBox(height: AppDimens.marginLarge),
                      TextInput(
                        controller: nameController,
                        label: locales?.fullname ?? '',
                        placeHolder: locales?.enterFullname ?? '',
                        type: TextInputType.name,
                      ),
                      const SizedBox(
                        height: AppDimens.borderRadiusLarge,
                      ),
                      TextInput(
                        controller: emailController,
                        label: locales?.email ?? '',
                        placeHolder: locales?.enterEmail ?? '',
                        type: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: AppDimens.borderRadiusLarge,
                      ),
                      TextInput(
                        controller: phoneController,
                        label: locales?.phone ?? '',
                        placeHolder: locales?.enterPhone ?? '',
                        type: TextInputType.phone,
                      ),
                      const SizedBox(
                        height: AppDimens.borderRadiusLarge,
                      ),
                      TextInput(
                        controller: mainAddressController,
                        label: locales?.mainAddress ?? '',
                        placeHolder: locales?.enterMainAddress ?? '',
                        type: TextInputType.streetAddress,
                      ),
                      const SizedBox(
                        height: AppDimens.paddingLarge,
                      ),
                      LabeledSwitchInput(
                        label: locales?.editPassword ?? '',
                        value: isChangePassword.value,
                        onChanged: (value) {
                          isChangePassword.value = value;
                        },
                      ),
                      Visibility(
                        visible: isChangePassword.value,
                        child: Column(
                          children: [
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
                            ),
                            const SizedBox(
                              height: AppDimens.borderRadiusLarge,
                            ),
                            TextInput(
                              controller: passwordController,
                              label: locales?.confPassword ?? '',
                              placeHolder: locales?.enterConfPassword ?? '',
                              isPassword: true,
                              isPassVisible: isPasswordVisible.value,
                              onPasswordTap: () {
                                isPasswordVisible.value =
                                    !isPasswordVisible.value;
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }

              return const DataEmpty();
            }),
          ),
        ],
      ),
    );
  }
}
