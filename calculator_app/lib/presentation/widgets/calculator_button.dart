import 'package:flutter/material.dart';
import '../../../core/constants/app_text_styles.dart';

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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonStyle.backgroundColor?.resolve({}),
        foregroundColor: buttonStyle.foregroundColor?.resolve({}),
        side: buttonStyle.side?.resolve({}),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(20),
      ),
      onPressed: onPressed,
      child: Text(label, style: AppTextStyles.button),
    );
  }

  // Widget build(BuildContext context) {
  //   final theme = context.watch<ThemeController>().theme;
  //   final styles = Theme.of(context).extension<CustomButtonStyles>()!;
  //
  //   final styleButton = styles["button2"];
  //
  //   return ElevatedButton(
  //     style: ElevatedButton.styleFrom(
  //       backgroundColor: color ?? AppColors.buttonBackground,
  //       shape: const CircleBorder(),
  //       padding: const EdgeInsets.all(20),
  //     ),
  //     onPressed: onPressed,
  //     child: Text(label, style: AppTextStyles.button),
  //   );
  // }
}
