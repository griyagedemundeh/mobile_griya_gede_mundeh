import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';

class ArticleMetaItem extends StatelessWidget {
  const ArticleMetaItem({
    super.key,
    required this.icon,
    required this.data,
    this.color,
  });

  final String icon;
  final String data;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          height: 16,
          width: 16,
          color: color ?? AppColors.primary1,
        ),
        const SizedBox(
          width: AppDimens.paddingSmall,
        ),
        Text(
          data,
          style: TextStyle(
            color: color ?? AppColors.primary1,
            fontSize: AppFontSizes.bodySmall,
          ),
        ),
      ],
    );
  }
}
