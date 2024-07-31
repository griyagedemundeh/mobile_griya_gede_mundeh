import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';

class BackgroundGradientPrimary extends StatelessWidget {
  const BackgroundGradientPrimary({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Image.asset(
            AppImages.mesh1,
            width: double.infinity,
          ),
          Positioned(
            bottom: -(height * 0.22),
            child: Container(
              width: width,
              height: height * 0.2,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 100,
                    color: AppColors.primary1,
                  )
                ],
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
