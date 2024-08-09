import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';

class MeshPrimary extends StatelessWidget {
  const MeshPrimary({
    super.key,
    this.top,
    this.bottom,
    this.right,
    this.left,
  });

  final double? top;
  final double? bottom;
  final double? right;
  final double? left;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Positioned(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
      child: Container(
        height: height * 0.3,
        width: height * 0.35,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 60,
              spreadRadius: 10,
              color: AppColors.primary1.withOpacity(0.95),
            )
          ],
        ),
      ),
    );
  }
}
