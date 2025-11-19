import 'package:intl/intl.dart';

class CalculatorLogic {
  static String evaluate(String expression) {
    try {
      final sanitized = expression.replaceAll('×', '*').replaceAll('÷', '/');
      final result = double.parse(_calculate(sanitized));

      return result.toStringAsFixed(
        result.truncateToDouble() == result ? 0 : 2,
      );
    } catch (_) {
      return 'Error';
    }
  }

  static String format(String str) {
    try {
      String newStr = str.replaceAll(',', '');
      double value = double.parse(newStr);

      final formatter = NumberFormat('#,##0.####', 'en_US');

      return formatter.format(value);
    } catch (_) {
      return 'Error';
    }
  }

  static String _calculate(String expr) {
    try {
      final parsed = expr.split(RegExp(r'([+\-*/])'));
      double result = double.parse(parsed[0]);

      for (int i = 1; i < parsed.length; i += 2) {
        final op = parsed[i];
        final next = double.parse(parsed[i + 1]);

        switch (op) {
          case '+':
            result += next;
            break;
          case '-':
            result -= next;
            break;
          case '*':
            result *= next;
            break;
          case '/':
            result /= next;
            break;
        }
      }

      return result.toString();
    } catch (_) {
      return 'Error';
    }
  }

  static String calculateOp(String term1, String term2, String op) {
    try {
      double term01 = double.parse(term1.replaceAll(',', ''));
      double term02 = double.parse(term2.replaceAll(',', ''));
      double result = 0;

      switch (op) {
        case '+':
          result = term01 + term02;
          break;
        case '-':
          result = term01 - term02;
          break;
        case '×':
          result = term01 * term02;
          break;
        case '÷':
          result = term01 / term02;
          break;
        default:
          result = term02;
          break;
      }

      return result.toString();
    } catch (_) {
      return 'Error';
    }
  }
}
