import 'package:calculator_app/core/utils/calculate_width.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_colors.dart';
import '../controllers/calculator_controller.dart';
import 'calculator_button.dart';

class Keypad extends StatelessWidget {
  const Keypad({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<CalculatorController>();
    final screenWidth = MediaQuery.of(context).size.width;
    final finalWidth = calculateWidth(screenWidth);

    final buttons = [
      ['C', 'DEL', '÷', '×'],
      ['7', '8', '9', '-'],
      ['4', '5', '6', '+'],
      ['1', '2', '3', '='],
      ['0', '.', ''],
    ];

    return Container(
      width: finalWidth,
      height: 128,
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.all(24),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: buttons.map((row) {
            return Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: row.map((label) {
                  if (label.isEmpty) return const SizedBox(width: 70);
                  return CalculatorButton(
                    label: label,
                    color: label == '=' ? AppColors.accent : null,
                    onPressed: () {
                      if (label == 'C')
                        controller.clear();
                      else if (label == 'DEL')
                        controller.delete();
                      else if (label == '=')
                        controller.calculate();
                      else
                        controller.addInput(label);
                    },
                  );
                }).toList(),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
