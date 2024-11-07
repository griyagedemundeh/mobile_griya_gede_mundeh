import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/images.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/mini/article_meta_item.dart';
import 'package:shimmer/shimmer.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({
    super.key,
    required this.title,
    required this.thumbnailUrl,
    required this.publishedAt,
    required this.author,
    required this.onTap,
  });

  final String title;
  final String thumbnailUrl;
  final String publishedAt;
  final String author;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: height * 0.2,
        width: width,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                10,
              ),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.darken,
                ),
                child: CachedNetworkImage(
                  imageUrl: thumbnailUrl,
                  fit: BoxFit.cover,
                  width: width,
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
            Container(
              padding: const EdgeInsets.all(
                AppDimens.borderRadiusLarge,
              ),
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: AppDimens.paddingMedium,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: AppDimens.paddingLarge,
                          ),
                          Text(
                            title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: AppColors.light1,
                              fontSize: AppFontSizes.bodyLarge,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: AppDimens.paddingSmall,
                            ),
                            child: ArticleMetaItem(
                              icon: AppImages.icDate,
                              data: publishedAt,
                            ),
                          ),
                          ArticleMetaItem(
                            icon: AppImages.icAuthor,
                            data: author,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    AppImages.rigthBottom,
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
