import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';

abstract class AppTheme {
  static ThemeData getTheme({bool? isDark}) {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        surfaceTintColor: AppColors.light1,
        elevation: 2,
        shadowColor: AppColors.dark1.withOpacity(0.5),
      ),
      textTheme: GoogleFonts.plusJakartaSansTextTheme(),
      scaffoldBackgroundColor: Colors.white,
    );
  }
}
