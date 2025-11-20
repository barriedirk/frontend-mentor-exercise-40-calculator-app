import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/utils/calculator_logic.dart';

class CalculatorController extends ChangeNotifier {
  String _last = '';
  String _output = '0';
  String _lastOp = "";
  String _lastKey = "";

  String get last => _last;
  String get output => _output;

  final String operations = "x/-+";

  CalculatorController() {
    _loadFromPrefs();
  }

  void addInput(String value) {
    if (operations.contains(value)) {
      _handleOperator(value);
    } else {
      _handleDigit(value);
    }

    notifyListeners();
    _saveToPrefs();
  }

  void _handleOperator(String value) {
    if (_last == '') {
      _last = _output;
    } else {
      _last = CalculatorLogic.calculateOp(_last, _output, _lastOp);
    }

    _lastOp = value;
    _output = CalculatorLogic.format(_last);
    _lastKey = value;
  }

  void _handleDigit(String value) {
    if (_lastKey != '' && operations.contains(_lastKey)) {
      _output = "0";
      _lastKey = "";
    }

    if (value == ".") {
      if (!_output.contains('.')) {
        _output += value;
      }
    } else if (_output == "0" && value != "0") {
      _output = value;
    } else {
      _output += value;
      _output = CalculatorLogic.format(_output);
    }
  }

  void clear() {
    _last = '';
    _output = '0';

    notifyListeners();
    _saveToPrefs();
  }

  void delete() {
    if (_output.isNotEmpty || _output != "0") {
      _output = _output.substring(0, _output.length - 1);

      if (_output == "") {
        _output = "0";
      }

      _output = CalculatorLogic.format(_output);

      notifyListeners();
      _saveToPrefs();
    }
  }

  void calculate() {
    _output = CalculatorLogic.format(
      CalculatorLogic.calculateOp(_last, _output, _lastOp),
    );

    _lastOp = '';
    _last = '';
    _lastKey = '';

    notifyListeners();
    _saveToPrefs();
  }

  // to save the state in the browser, ( save in SharedPreferences. )
  Future<void> _saveToPrefs() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('calc_input', _last);
    await prefs.setString('calc_output', _output);
  }

  Future<void> _loadFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();

    _last = prefs.getString('calc_input') ?? '0';
    _output = prefs.getString('calc_output') ?? '0';
    notifyListeners();
  }
}
