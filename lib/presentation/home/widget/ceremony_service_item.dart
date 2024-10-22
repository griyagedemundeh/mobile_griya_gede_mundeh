import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:shimmer/shimmer.dart';

class CeremonyServiceItem extends StatelessWidget {
  const CeremonyServiceItem({
    super.key,
    required this.onTap,
    required this.iconUrl,
    required this.title,
  });

  final VoidCallback onTap;
  final String iconUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: AppColors.light1,
              border: Border.all(
                width: 1,
                color: AppColors.primary1,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: CachedNetworkImage(
                imageUrl: iconUrl,
                fit: BoxFit.cover,
                height: 60,
                width: 60,
                progressIndicatorBuilder: (context, url, downloadProgress) {
                  return Shimmer.fromColors(
                    baseColor: AppColors.gray2.withOpacity(0.6),
                    highlightColor: AppColors.light1,
                    child: const SizedBox(),
                  );
                },
                errorWidget: (context, url, error) => const SizedBox(),
              ),
            ),
          ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: AppFontSizes.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
