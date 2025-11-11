import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:calculator_app/core/utils/calculate_width.dart';
import '../../../core/constants/app_text_styles.dart';
import '../controllers/calculator_controller.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<CalculatorController>();
    final screenWidth = MediaQuery.of(context).size.width;
    final finalWidth = calculateWidth(screenWidth);

    return Container(
      width: finalWidth,
      height: 128,
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 169, 214, 213),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(controller.input, style: AppTextStyles.button),
          const SizedBox(height: 10),
          Text(controller.output, style: AppTextStyles.display),
        ],
      ),
    );
  }
}
