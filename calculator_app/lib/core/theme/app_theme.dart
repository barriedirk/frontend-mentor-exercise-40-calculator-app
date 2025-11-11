import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: const ColorScheme.dark(
      surface: AppColors.background,
      primary: AppColors.accent,
    ),
    useMaterial3: true,
    textTheme: GoogleFonts.leagueSpartanTextTheme(ThemeData.dark().textTheme),
  );
}
