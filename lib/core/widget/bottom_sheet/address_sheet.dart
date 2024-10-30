import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/address/response/address.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/address/address_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/presentation/transaction/screens/detail_transaction_screen.dart';

class AddressSheet {
  static showSheet(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    PrimaryBottomSheet(
      height: height * 0.6,
      content: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimens.paddingMedium,
        ),
        child: AddressList(),
      ),
    ).showModalBottom(context);
  }
}

class AddressList extends HookConsumerWidget {
  const AddressList({
    super.key,
  });

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
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: index == 0
                            ? AppColors.primary1.withOpacity(0.3)
                            : null,
                        border: Border.all(
                          color: index == 0
                              ? AppColors.primary1
                              : AppColors.lightgray2,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(
                          AppDimens.paddingSmall,
                        ),
                      ),
                      child: RadioListTile(
                        value: addresses?[index]?.address ?? '',
                        groupValue: addresses?[0]?.address,
                        activeColor: AppColors.primary1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            AppDimens.paddingSmall,
                          ),
                        ),
                        onChanged: (String? value) {},
                        title: Text(
                          addresses?[index]?.address ?? '',
                          style: const TextStyle(
                            fontSize: AppFontSizes.bodySmall,
                            color: AppColors.gray2,
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: index == 0,
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
          onTap: () {},
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
                  PrimaryNavigation.pushFromRight(
                    context,
                    page: const DetailTransactionScreen(),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
