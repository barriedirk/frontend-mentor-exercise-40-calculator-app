import 'package:calculator_app/presentation/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:calculator_app/core/utils/calculate_width.dart';
import '../controllers/calculator_controller.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeController>().theme;

    final controller = context.watch<CalculatorController>();
    final screenWidth = MediaQuery.of(context).size.width;
    final finalWidth = calculateWidth(screenWidth);

    return Container(
      width: finalWidth,
      height: 128,
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: theme.colorScheme.tertiaryContainer,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.bottomRight,
        child: Text(
          controller.output,
          style: GoogleFonts.leagueSpartan(
            fontSize: 56,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.primary,
            letterSpacing: -1,
          ),
        ),
      ),
    );
  }
}
