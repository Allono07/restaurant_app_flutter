import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/themes/light_mode.dart';

import 'package:restaurant_app_flutter/themes/dark_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = lightMode;
    } else {
      themeData = darkMode;
    }
  }
}