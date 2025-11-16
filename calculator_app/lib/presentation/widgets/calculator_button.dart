import 'package:calculator_app/core/utils/calculate_width.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:calculator_app/core/constants/app_breakpoints.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final ButtonStyle buttonStyle;

  const CalculatorButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.buttonStyle,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSize = screenWidth <= AppBreakpoints.containerWMax ? 30.0 : 40.0;
    final letterSpacing = screenWidth < AppBreakpoints.containerWMax
        ? -0.5
        : -0.7;

    return ElevatedButton(
      style: buttonStyle.copyWith(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide.none,
          ),
        ),
        padding: WidgetStatePropertyAll(const EdgeInsets.all(20)),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: GoogleFonts.leagueSpartan(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          letterSpacing: letterSpacing,
        ),
      ),
    );
  }
}
