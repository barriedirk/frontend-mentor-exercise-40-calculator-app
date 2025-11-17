import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:calculator_app/core/theme/custom_button_styles.dart';

class Themes {
  static final _buttons1 = CustomButtonStyles(
    buttons: {
      "button1": ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xFFE6E6E6)),
        foregroundColor: WidgetStatePropertyAll(Color(0xFF434A59)),
        side: WidgetStatePropertyAll(
          BorderSide(width: 1, color: Color(0xFFB3A497)),
        ),
      ),
      "button2": ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xFF647198)),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        side: WidgetStatePropertyAll(
          BorderSide(width: 1, color: Color(0xFF414E73)),
        ),
      ),
      "button3": ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xFFD03F2F)),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        side: WidgetStatePropertyAll(
          BorderSide(width: 1, color: Color(0xFF93261A)),
        ),
      ),
    },
  );

  static final _buttons2 = CustomButtonStyles(
    buttons: {
      "button1": ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xFFE6E6E6)),
        foregroundColor: WidgetStatePropertyAll(Color(0xFF434A59)),
        side: WidgetStatePropertyAll(
          BorderSide(width: 1, color: Color(0xFFA79E91)),
        ),
      ),
      "button2": ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xFF378187)),
        foregroundColor: WidgetStatePropertyAll(Color(0xFFE6E6E6)),
        side: WidgetStatePropertyAll(
          BorderSide(width: 1, color: Color(0xFF1B6066)),
        ),
      ),
      "button3": ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xFFC85402)),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        side: WidgetStatePropertyAll(
          BorderSide(width: 1, color: Color(0xFFA79E91)),
        ),
      ),
    },
  );

  static final _buttons3 = CustomButtonStyles(
    buttons: {
      "button1": ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xFF331C4D)),
        foregroundColor: WidgetStatePropertyAll(Color(0xFFFFE53D)),
        side: WidgetStatePropertyAll(
          BorderSide(width: 1, color: Color(0xFF881C9E)),
        ),
      ),
      "button2": ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xFF56077C)),
        foregroundColor: WidgetStatePropertyAll(Color(0xFFFFFFFF)),
        side: WidgetStatePropertyAll(
          BorderSide(width: 1, color: Color(0xFFBE15F4)),
        ),
      ),
      "button3": ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xFF00DED0)),
        foregroundColor: WidgetStatePropertyAll(Color(0xFF1A2327)),
        side: WidgetStatePropertyAll(
          BorderSide(width: 1, color: Color(0xFF6CF9F1)),
        ),
      ),
    },
  );

  static final theme1 = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF22252D),
    colorScheme: const ColorScheme.dark(
      background: Color(0xFF22252D),
      primary: Color.fromARGB(255, 210, 205, 205),
      primaryContainer: Color(0xFF242D44),
      secondaryContainer: Color(0xFF242D44),
      tertiaryContainer: Color(0xFF181F33),
      surface: Color(0xFF292D36),
      onSurface: Colors.white70,
      secondary: Color(0xFF4C4F5E),
    ),
    textTheme: GoogleFonts.leagueSpartanTextTheme(),
    extensions: [_buttons1],
  );

  static final theme2 = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFE6E6E6),
    colorScheme: const ColorScheme.light(
      background: Color(0xFFE6E6E6),
      primary: Color(0xFF434A59),
      primaryContainer: Color(0xFFD2CDCD),
      secondaryContainer: Colors.red,
      tertiaryContainer: Colors.white,
      surface: Color(0xFF292D36),
      onSurface: Colors.white70,
      secondary: Color(0xFF4C4F5E),
    ),
    textTheme: GoogleFonts.leagueSpartanTextTheme(),
    extensions: [_buttons2],
  );

  static final theme3 = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF17062A),
    colorScheme: const ColorScheme.dark(
      background: Color(0xFF17062A),
      primary: Color(0xFFFFE53D),
      primaryContainer: Color(0xFF1E0936),
      secondaryContainer: Color(0xFF1E0936),
      tertiaryContainer: Color(0xFF1E0936),
      surface: Color(0xFF292D36),
      onSurface: Colors.white70,
      secondary: Color(0xFF4C4F5E),
    ),
    textTheme: GoogleFonts.leagueSpartanTextTheme(),
    extensions: [_buttons3],
  );
}
