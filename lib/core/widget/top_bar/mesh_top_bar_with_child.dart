import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/mesh_primary.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/top_bar/mesh_app_bar.dart';

class MeshTopBarWithChild extends StatelessWidget {
  const MeshTopBarWithChild({
    super.key,
    required this.child,
    this.isWihoutBack,
    this.title,
  });

  final Widget child;
  final bool? isWihoutBack;
  final String? title;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double paddingTop = MediaQuery.of(context).padding.top;

    return Stack(
      children: [
        const MeshPrimaryTopBarSecondary(),
        Padding(
          padding: EdgeInsets.only(top: paddingTop),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: AppDimens.borderRadiusLarge,
              horizontal: AppDimens.paddingMedium,
            ),
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: title != null
                      ? const EdgeInsets.all(AppDimens.paddingSmall)
                      : EdgeInsets.zero,
                  child: Row(
                    mainAxisAlignment: isWihoutBack == true
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        visible: isWihoutBack == null || isWihoutBack == false,
                        child: BorderedIconButton(
                          icon: const Icon(
                            Icons.chevron_left_rounded,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Visibility(
                        visible: title != null,
                        child: Expanded(
                          child: Text(
                            title ?? '',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: AppFontSizes.titleMediumLarge,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: isWihoutBack == null || isWihoutBack == false,
                        child: BorderedIconButton(
                          icon: const Text(
                            "i",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppFontSizes.bodyLarge,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppDimens.paddingMedium),
                child,
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MeshPrimaryTopBarSecondary extends StatelessWidget {
  const MeshPrimaryTopBarSecondary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * 0.21,
      width: width,
      child: const Stack(
        children: [
          MeshPrimary(
            top: -200,
            right: -20,
          ),
          MeshPrimary(
            left: -200,
            bottom: -240,
          ),
          MeshPrimary(
            right: -200,
            bottom: -240,
          ),
        ],
      ),
    );
  }
}
