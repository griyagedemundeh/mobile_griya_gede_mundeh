import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({
    super.key,
    required this.isLoading,
  });

  final ValueNotifier<bool> isLoading;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoading.value,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.lightgray.withOpacity(0.6),
        ),
        child: const Center(
          child: CircularProgressIndicator(
            color: AppColors.primary1,
          ),
        ),
      ),
    );
  }
}
