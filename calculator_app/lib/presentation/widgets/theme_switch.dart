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

    return SizedBox(
      height: 56,
      width: 125,
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
          Column(
            children: [
              Container(
                height: 20,
                width: 68,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 4.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(3, (index) {
                    final indexText = (index + 1).toString();

                    return GestureDetector(
                      onTap: () => themeController.setTheme(index),
                      child: Text(
                        indexText,
                        style: GoogleFonts.leagueSpartan(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 1),
              Container(
                height: 30,
                width: 68,
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
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
                              ? Color(0xffD03F2F)
                              : theme.colorScheme.primaryContainer,
                          shape: BoxShape.circle,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
