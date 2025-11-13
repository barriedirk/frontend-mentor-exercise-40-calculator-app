import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:calculator_app/presentation/controllers/theme_controller.dart';
import './theme_switch.dart';
import 'package:calculator_app/core/utils/calculate_width.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final theme = context.watch<ThemeController>().theme;
    final finalWidth = calculateWidth(screenWidth);

    return SizedBox(
      width: finalWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ),
    );
  }
}
