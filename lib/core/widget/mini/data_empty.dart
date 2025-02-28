import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';

class DataEmpty extends StatelessWidget {
  const DataEmpty({
    super.key,
    this.message,
  });

  final String? message;

  @override
  Widget build(BuildContext context) {
    final locales = AppLocalizations.of(context);

    return Center(
      child: Text(
        "${message ?? locales?.dataEmpty}",
        style: const TextStyle(
          color: AppColors.lightgray2,
        ),
      ),
    );
  }
}
