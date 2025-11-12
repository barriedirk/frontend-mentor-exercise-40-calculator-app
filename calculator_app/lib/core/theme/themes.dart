import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final theme1 = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF22252D),
    colorScheme: const ColorScheme.dark(
      background: Color(0xFF22252D),
      primary: Color.fromARGB(255, 252, 252, 252),
      primaryContainer: Color(0xFF242D44),
      secondaryContainer: Color(0xFF22252D),
      tertiaryContainer: Colors.white,
      surface: Color(0xFF292D36),
      onSurface: Colors.white70,
      secondary: Color(0xFF4C4F5E),
    ),
    textTheme: GoogleFonts.leagueSpartanTextTheme(),
  );

  static final theme2 = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFE6E6E6),
    colorScheme: const ColorScheme.light(
      background: Color(0xFFE6E6E6),
      primary: Color(0xFFCA5502),
      primaryContainer: Color(0xFF242D44),
      secondaryContainer: Color(0xFF22252D),
      tertiaryContainer: Colors.white,
      surface: Color(0xFF292D36),
      onSurface: Colors.white70,
      secondary: Color(0xFF4C4F5E),
    ),
    textTheme: GoogleFonts.leagueSpartanTextTheme(),
  );

  static final theme3 = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF17062A),
    colorScheme: const ColorScheme.dark(
      background: Color(0xFF17062A),
      primary: Color(0xFF00E0D1),
      primaryContainer: Color(0xFF242D44),
      secondaryContainer: Color(0xFF22252D),
      tertiaryContainer: Colors.white,
      surface: Color(0xFF292D36),
      onSurface: Colors.white70,
      secondary: Color(0xFF4C4F5E),
    ),
    textTheme: GoogleFonts.leagueSpartanTextTheme(),
  );
}
