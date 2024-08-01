import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';

class MeshTopBackground extends StatelessWidget {
  const MeshTopBackground({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          const MeshPrimaryTopBar(),
          child,
        ],
      ),
    );
  }
}

class MeshPrimaryTopBar extends StatelessWidget {
  const MeshPrimaryTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * 0.3,
      width: width,
      child: const Stack(
        children: [
          MeshPrimary(
            top: -160,
            right: -20,
          ),
          MeshPrimary(
            left: -200,
            bottom: -210,
          ),
          MeshPrimary(
            right: -200,
            bottom: -220,
          ),
        ],
      ),
    );
  }
}

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
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 200,
              spreadRadius: 10,
              color: AppColors.primary1,
            )
          ],
        ),
      ),
    );
  }
}
