import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';

class IconRoundedButton extends StatelessWidget {
  const IconRoundedButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      padding: const EdgeInsets.all(AppDimens.borderRadiusLarge),
      shape: const StadiumBorder(),
      elevation: 0,
      minWidth: 0,
      height: 0,
      color: AppColors.primary1,
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
