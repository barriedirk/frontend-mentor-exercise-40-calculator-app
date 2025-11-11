import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final theme1 = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF22252D),
    colorScheme: const ColorScheme.dark(
      background: Color(0xFF22252D),
      primary: Color(0xFFFF9500),
    ),
    textTheme: GoogleFonts.leagueSpartanTextTheme(),
  );

  static final theme2 = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFE6E6E6),
    colorScheme: const ColorScheme.light(
      background: Color(0xFFE6E6E6),
      primary: Color(0xFFCA5502),
    ),
    textTheme: GoogleFonts.leagueSpartanTextTheme(),
  );

  static final theme3 = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF17062A),
    colorScheme: const ColorScheme.dark(
      background: Color(0xFF17062A),
      primary: Color(0xFF00E0D1),
    ),
    textTheme: GoogleFonts.leagueSpartanTextTheme(),
  );
}
