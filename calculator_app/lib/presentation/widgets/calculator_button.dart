import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? color;

  const CalculatorButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? AppColors.buttonBackground,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
      ),
      onPressed: onPressed,
      child: Text(label, style: AppTextStyles.button),
    );
  }
}
