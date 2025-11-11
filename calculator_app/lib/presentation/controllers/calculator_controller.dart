import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/utils/calculator_logic.dart';

class CalculatorController extends ChangeNotifier {
  String _input = '';
  String _output = '0';

  String get input => _input;
  String get output => _output;

  CalculatorController() {
    _loadFromPrefs(); // ← Cargamos estado guardado al iniciar
  }

  void addInput(String value) {
    _input += value;
    notifyListeners();
    _saveToPrefs();
  }

  void clear() {
    _input = '';
    _output = '0';
    notifyListeners();
    _saveToPrefs();
  }

  void delete() {
    if (_input.isNotEmpty) {
      _input = _input.substring(0, _input.length - 1);
      notifyListeners();
      _saveToPrefs();
    }
  }

  void calculate() {
    _output = CalculatorLogic.evaluate(_input);
    notifyListeners();
    _saveToPrefs();
  }

  // to save the state in the browser, ( save in SharedPreferences. )
  Future<void> _saveToPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('calc_input', _input);
    await prefs.setString('calc_output', _output);
  }

  Future<void> _loadFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    _input = prefs.getString('calc_input') ?? '';
    _output = prefs.getString('calc_output') ?? '0';
    notifyListeners();
  }
}
