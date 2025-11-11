import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:calculator_app/presentation/controllers/theme_controller.dart';
import './theme_switch.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeController>().theme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "calc",
          style: GoogleFonts.leagueSpartan(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            height: 1,
            color: theme.colorScheme.primary,
            letterSpacing: -0.5,
          ),
        ),
        ThemeSwitch(),
      ],
    );
  }
}
