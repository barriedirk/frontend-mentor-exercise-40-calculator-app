import 'package:flutter/material.dart';
import '../../../core/theme/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {
  int _currentIndex = 0;
  late ThemeData _currentTheme;

  ThemeController() {
    _loadTheme();
  }

  int get currentIndex => _currentIndex;
  ThemeData get theme => _currentTheme;

  void _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();

    _currentIndex = prefs.getInt('theme_index') ?? 0;
    _currentTheme = _getThemeByIndex(_currentIndex);

    notifyListeners();
  }

  void setTheme(int index) async {
    _currentIndex = index;
    _currentTheme = _getThemeByIndex(index);
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();

    prefs.setInt('theme_index', index);
  }

  ThemeData _getThemeByIndex(int index) {
    switch (index) {
      case 1:
        return Themes.theme2;
      case 2:
        return Themes.theme3;
      default:
        return Themes.theme1;
    }
  }
}
