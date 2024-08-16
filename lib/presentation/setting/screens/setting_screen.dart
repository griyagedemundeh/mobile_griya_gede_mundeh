import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/button/primary_button.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_top_bar_with_child.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          MeshTopBarWithChild(
            isWihoutBack: true,
            height: height * 0.25,
            child: SizedBox(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: AppDimens.iconSizeMediumLarge,
                    backgroundImage: AssetImage(
                      AppImages.onboarding1,
                    ),
                  ),
                  const SizedBox(height: AppDimens.paddingSmall),
                  MaterialButton(
                    onPressed: () {},
                    color: AppColors.primary1,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          AppDimens.marginSmall,
                        ),
                      ),
                    ),
                    elevation: 0,
                    child: const Text(
                      "Mulai Sekarang!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: AppFontSizes.bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                MaterialButton(
                  onPressed: () {},
                  elevation: 0,
                  child: Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppImages.icFaq,
                          ),
                          const SizedBox(width: AppDimens.paddingSmall),
                          const Text(
                            "FAQ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              // fontSize: AppFontSizes.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
