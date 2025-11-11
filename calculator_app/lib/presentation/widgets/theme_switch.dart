import 'package:calculator_app/core/utils/calculate_width.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/theme_controller.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeController>().theme;
    final themeController = context.watch<ThemeController>();
    final screenWidth = MediaQuery.of(context).size.width;
    final finalWidth = calculateWidth(screenWidth);

    return Container(
      height: 50,
      width: finalWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "THEME",
            style: GoogleFonts.leagueSpartan(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              height: 1,
              color: theme.colorScheme.primary,
              letterSpacing: 1,
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 30,
            width: 68,
            padding: const EdgeInsets.all(50.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 169, 214, 213),
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                final isSelected = themeController.currentIndex == index;

                return GestureDetector(
                  onTap: () => themeController.setTheme(index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? themeController.theme.colorScheme.primary
                          : Colors.grey.shade400,
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
