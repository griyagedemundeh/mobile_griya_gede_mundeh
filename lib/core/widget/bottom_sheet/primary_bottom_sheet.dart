import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';

class PrimaryBottomSheet {
  final Widget content;
  final double? height;

  PrimaryBottomSheet({required this.content, this.height});

  showModalBottom(BuildContext context) async {
    final width = MediaQuery.of(context).size.width;

    await showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppDimens.marginLarge),
          topRight: Radius.circular(AppDimens.marginLarge),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          height: height,
          width: width,
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: AppDimens.paddingMedium,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: AppDimens.paddingMicro,
                  width: AppDimens.buttonHeight,
                  decoration: BoxDecoration(
                    color: AppColors.lightgray2,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              const SizedBox(height: AppDimens.paddingLarge),
              SizedBox(
                width: width,
                child: content,
              ),
            ],
          ),
        );
      },
    );
  }
}
