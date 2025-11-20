import 'package:intl/intl.dart';
import 'package:decimal/decimal.dart';

class CalculatorLogic {
  static String evaluate(String expression) {
    try {
      final sanitized = expression.replaceAll('x', '*').replaceAll('÷', '/');
      final result = _calculate(sanitized);

      return format(result.toString());
    } catch (e) {
      print('Evaluate Error: $e');
      return 'Error';
    }
  }

  static String format(String str) {
    try {
      String newStr = str.replaceAll(',', '');
      Decimal value = Decimal.parse(newStr);

      final formatter = NumberFormat('#,##0.##########', 'en_US');

      return formatter.format(double.parse(value.toString()));
    } catch (e) {
      print('Format Error: $e');
      return 'Error';
    }
  }

  static Decimal _calculate(String expr) {
    try {
      // Regex to match numbers (including decimals) or operators
      final regex = RegExp(r'([0-9.]+|[+\-*/])');
      final matches = regex.allMatches(expr).map((m) => m.group(0)!).toList();

      if (matches.isEmpty) return Decimal.zero;

      Decimal result = Decimal.parse(matches[0]);

      for (int i = 1; i < matches.length; i += 2) {
        final op = matches[i];
        final next = Decimal.parse(matches[i + 1]);

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
            result = (result / next).toDecimal(scaleOnInfinitePrecision: 10);
            break;
        }
      }

      return result;
    } catch (e) {
      print('Calculate Error: $e');
      throw Exception('Calculation Error: $e');
    }
  }

  static String calculateOp(String term1, String term2, String op) {
    try {
      Decimal term01 = Decimal.parse(term1.replaceAll(',', ''));
      Decimal term02 = Decimal.parse(term2.replaceAll(',', ''));
      Decimal result = Decimal.zero;

      switch (op) {
        case '+':
          result = term01 + term02;
          break;
        case '-':
          result = term01 - term02;
          break;
        case 'x':
          result = term01 * term02;
          break;
        case '/':
          result = (term01 / term02).toDecimal(scaleOnInfinitePrecision: 10);
          break;
        default:
          result = term02;
          break;
      }

      return result.toString();
    } catch (e) {
      print('CalculateOp Error: $e');
      return 'Error';
    }
  }
}
