import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/mesh_primary.dart';

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
            top: -200,
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
