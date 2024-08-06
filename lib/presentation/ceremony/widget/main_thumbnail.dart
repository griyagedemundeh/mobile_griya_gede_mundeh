import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:shimmer/shimmer.dart';

class MainThumbnail extends StatelessWidget {
  const MainThumbnail({
    super.key,
    required this.thumbnailUrl,
  });

  final String thumbnailUrl;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return CachedNetworkImage(
      imageUrl: thumbnailUrl,
      fit: BoxFit.cover,
      height: height * 0.25,
      width: width,
      progressIndicatorBuilder: (context, url, downloadProgress) {
        return Shimmer.fromColors(
          baseColor: AppColors.gray2.withOpacity(0.6),
          highlightColor: AppColors.light1,
          child: const SizedBox(),
        );
      },
      errorWidget: (context, url, error) => const SizedBox(),
    );
  }
}
