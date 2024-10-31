import 'dart:developer';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_validator/form_validator.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/controller/global_controller.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/bottom_sheet/primary_bottom_sheet.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/icon_leading_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/secondary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/input/text_input.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/toast/primary_toast.dart';
import 'package:mobile_griya_gede_mundeh/data/models/address/request/address_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/address/response/address.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/address/address_repository_implementor.dart';

class AddressSheet {
  static showSheet(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    PrimaryBottomSheet(
      height: height * 0.6,
      content: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.paddingMedium,
        ),
        child: AddressList(
          onChange: (address) {
            log('$address', name: 'ADDRESS SELECTE');
          },
        ),
      ),
    ).showModalBottom(context);
  }
}

class AddressList extends HookConsumerWidget {
  const AddressList({
    super.key,
    required this.onChange,
  });

  final Function(Address address) onChange;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final locales = AppLocalizations.of(context);

    final GlobalController addressController =
        GlobalController(addressRepository: AddressRepository());

    Future<ApiBaseResponse<List<Address?>?>?> getAddress() async {
      final response = await addressController.getAddresses();

      return response;
    }

    final addressesResponse =
        useQuery<ApiBaseResponse<List<Address?>?>?, ApiBaseResponse<dynamic>>(
      ['addresses'],
      getAddress,
    );

    final addresses = addressesResponse.data?.data as List<Address?>?;

    final addressInitValue = useState(addresses?[0]?.address ?? '');
    final selectedAddress = useState<Address?>(addresses?[0]);

    showSheetAddAddress(BuildContext context) {
      PrimaryBottomSheet(
        content: AddAddressSheet(
          addressesResponse: addressesResponse,
        ),
      ).showModalBottom(context);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          locales?.selectCeremonyLocation ?? '',
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: AppFontSizes.bodyLarge,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: AppDimens.paddingMedium),
        SizedBox(
          height: height * 0.28,
          child: Builder(builder: (context) {
            if (addressesResponse.isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary1,
                ),
              );
            }

            return ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(height: AppDimens.paddingMedium);
              },
              itemCount: addresses?.length ?? 0,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    addressInitValue.value = addresses?[index]?.address ?? '';
                    selectedAddress.value = addresses?[index];
                  },
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: addressInitValue.value ==
                                  addresses?[index]?.address
                              ? AppColors.primary1.withOpacity(0.3)
                              : null,
                          border: Border.all(
                            color: addressInitValue.value ==
                                    addresses?[index]?.address
                                ? AppColors.primary1
                                : AppColors.lightgray2,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(
                            AppDimens.paddingSmall,
                          ),
                        ),
                        child: Container(
                          height: AppDimens.appBarHeight,
                          padding: const EdgeInsets.all(
                            AppDimens.paddingMedium,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: AppDimens.paddingMedium,
                                width: AppDimens.paddingMedium,
                                decoration: BoxDecoration(
                                  color: addressInitValue.value ==
                                          addresses?[index]?.address
                                      ? AppColors.primary1
                                      : AppColors.gray1,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                  border: Border.all(
                                    color: AppColors.lightgray,
                                    width: 4,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: AppDimens.paddingMedium,
                              ),
                              Text(
                                addresses?[index]?.address ?? '',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: addresses?[index]?.isMain ?? false,
                        child: Positioned(
                          right: 4,
                          top: 4,
                          child: CircleAvatar(
                            backgroundColor: AppColors.primary1,
                            radius: AppDimens.paddingMedium,
                            child: SvgPicture.asset(
                              AppImages.icLocation,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppDimens.marginMedium,
          ),
          child: Divider(
            color: AppColors.lightgray2,
            height: 1,
            thickness: 1,
          ),
        ),
        IconLeadingButton(
          label: locales?.addNewAddress ?? '',
          onTap: () {
            showSheetAddAddress(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: AppDimens.paddingSmall,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecondaryButton(
                label: locales?.back ?? '',
                isMedium: true,
                isOutline: true,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(width: AppDimens.paddingMedium),
              PrimaryButton(
                label: locales?.next ?? '',
                isMedium: true,
                onTap: () {
                  onChange(selectedAddress.value!);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AddAddressSheet extends HookConsumerWidget {
  const AddAddressSheet({
    super.key,
    required this.addressesResponse,
  });

  final UseQueryResult<ApiBaseResponse<List<Address?>?>?,
      ApiBaseResponse<dynamic>> addressesResponse;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locales = AppLocalizations.of(context);
    final isLoading = useState<bool>(false);

    final GlobalController addressController =
        GlobalController(addressRepository: AddressRepository());
    final addressTextController = useTextEditingController();
    final addressAliasTextController = useTextEditingController();
    final addressNoteTextController = useTextEditingController();
    final addressFokusNode = useFocusNode();

    final addressError = useState<String?>(null);

    final validateAddress =
        ValidationBuilder(requiredMessage: 'Alamat utama harus diisi!')
            .required()
            .build();

    useEffect(() {
      () => addressFokusNode.dispose();
      return null;
    }, []);

    final addAddressMutation = useMutation<ApiBaseResponse<dynamic>?,
        ApiBaseResponse<dynamic>?, AddressRequest, void>(
      (addressRequest) async {
        final response =
            await addressController.addAddress(addressRequest: addressRequest);
        return response;
      },
      onSuccess: (response, variables, _) {
        isLoading.value = false;

        // for (var message in response?.message) {
        //   PrimaryToast.success(message: message);
        // }

        addressesResponse.refetch();

        Navigator.pop(context);
      },
      onError: (error, variables, _) {
        isLoading.value = false;

        for (var message in error?.message) {
          PrimaryToast.error(message: message);
        }
      },
    );

    Future addAddress() async {
      if (addressTextController.text == '') {
        return;
      }

      final data = AddressRequest(
        address: addressTextController.text,
        addressAlias: addressAliasTextController.text,
        addressNote: addressNoteTextController.text,
      );

      isLoading.value = true;

      await addAddressMutation.mutate(data);
      addAddressMutation.reset();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingMedium,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            locales?.addCeremonyLocation ?? '',
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: AppFontSizes.bodyLarge,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppDimens.paddingLarge),
          TextInput(
            controller: addressTextController,
            label: locales?.address ?? '',
            placeHolder: locales?.enterAddress ?? '',
            type: TextInputType.streetAddress,
            autoFocus: true,
            focusNode: addressFokusNode,
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
            isRequired: false,
            controller: addressAliasTextController,
            label: locales?.addressAlias ?? '',
            placeHolder: locales?.enterAddressAlias ?? '',
          ),
          const SizedBox(
            height: AppDimens.borderRadiusLarge,
          ),
          TextInput(
            controller: addressNoteTextController,
            label: locales?.addressNote ?? '',
            placeHolder: locales?.enterAddressNote ?? '',
            minLines: 1,
            maxLines: 3,
          ),
          const SizedBox(height: AppDimens.marginLarge),
          Padding(
            padding: const EdgeInsets.only(
              top: AppDimens.paddingSmall,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SecondaryButton(
                  label: locales?.back ?? '',
                  isMedium: true,
                  isOutline: true,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: AppDimens.paddingMedium),
                PrimaryButton(
                  label: locales?.save ?? '',
                  isMedium: true,
                  isLoading: isLoading.value,
                  onTap: () {
                    addAddress();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
