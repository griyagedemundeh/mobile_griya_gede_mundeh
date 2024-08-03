import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/background/mesh_top_background.dart';

class MeshAppBar extends StatelessWidget {
  const MeshAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double paddingTop = MediaQuery.of(context).padding.top;

    return Stack(
      children: [
        const MeshPrimary(
          top: -200,
          right: -50,
        ),
        Padding(
          padding: EdgeInsets.only(top: paddingTop),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: AppDimens.borderRadiusLarge,
              horizontal: AppDimens.paddingMedium,
            ),
            width: width,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BorderedIconButton(
                    icon: const Icon(
                      Icons.chevron_left_rounded,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: AppFontSizes.titleMediumLarge,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  BorderedIconButton(
                    icon: const Text(
                      "i",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppFontSizes.bodyLarge,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BorderedIconButton extends StatelessWidget {
  const BorderedIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final Widget icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      minWidth: 0,
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.dark1, width: 1),
          borderRadius: BorderRadius.circular(
            AppDimens.borderRadiusMedium,
          ),
        ),
        child: SizedBox(
          width: AppDimens.iconSizeSmall,
          height: AppDimens.iconSizeSmall,
          child: Center(
            child: icon,
          ),
        ),
      ),
    );
  }
}