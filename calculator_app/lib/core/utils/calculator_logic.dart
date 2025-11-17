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
}
