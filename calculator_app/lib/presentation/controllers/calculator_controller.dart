import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/utils/calculator_logic.dart';

class CalculatorController extends ChangeNotifier {
  String _last = '0';
  String _output = '0';
  String _lastOp = "";
  String _lastKey = "";

  String get last => _last;
  String get output => _output;

  CalculatorController() {
    _loadFromPrefs(); // ← Cargamos estado guardado al iniciar
  }

  void addInput(String value) {
    print(value);

    if ("×÷-+".contains(value)) {
      print("Enter ×÷-+");
      print(_last);
      print(_output);
      _last = CalculatorLogic.calculateOp(_last, _output, _lastOp);
      print(_last);
      _lastOp = value;
      _output = _last;
      _lastKey = value;
    } else if (value == '=') {
      print("Enter =");
      print(_last);
      print(_output);
      _output = CalculatorLogic.calculateOp(_last, _output, _lastOp);

      _lastOp = "";
      _last = "0";
    } else {
      if (_lastKey != '' && "×÷-+".contains(_lastKey)) {
        _output = "0";
        _lastKey = "";

        print("Enter clear");
      }

      if (value == ".") {
        _output += value;
      } else if (_output == "0" && value != "0") {
        _output = value;
      } else {
        print("Enter acme 2");
        _output += value;

        _output = CalculatorLogic.format(_output);
      }
    }

    notifyListeners();
    _saveToPrefs();
  }

  void clear() {
    _last = '0';
    _output = '0';

    notifyListeners();
    _saveToPrefs();
  }

  void delete() {
    if (_output.isNotEmpty || _output != "0") {
      _output = _output.substring(0, _output.length - 1);

      notifyListeners();
      _saveToPrefs();
    }
  }

  void calculate() {
    _output = CalculatorLogic.evaluate(_last);

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
