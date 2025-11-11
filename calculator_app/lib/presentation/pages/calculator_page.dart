import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/calculator_controller.dart';

import '../widgets/header.dart';
import '../widgets/display.dart';
import '../widgets/keypad.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CalculatorController(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(height: 30),

              Header(),
              Expanded(flex: 2, child: Display()),
              Expanded(flex: 3, child: Keypad()),
            ],
          ),
        ),
      ),
    );
  }
}
