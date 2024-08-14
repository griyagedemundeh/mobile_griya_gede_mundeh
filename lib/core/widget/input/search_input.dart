import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
    this.placeHolder,
  });

  final String? placeHolder;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.only(
        left: AppDimens.paddingMedium,
        right: AppDimens.paddingSmall,
      ),
      decoration: BoxDecoration(
        color: AppColors.light1.withOpacity(0.5),
        border: Border.all(
          color: AppColors.lightgray2,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(
          AppDimens.iconSizeLarge,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width * 0.7,
            child: TextField(
              autofocus: false,
              keyboardType: TextInputType.multiline,
              controller: TextEditingController(),
              cursorColor: AppColors.primary1,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: placeHolder ?? '',
                hintStyle: const TextStyle(
                  fontSize: AppFontSizes.bodyMedium,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () async {},
            icon: SvgPicture.asset(
              AppImages.icSearch,
            ),
          ),
        ],
      ),
    );
  }
}
