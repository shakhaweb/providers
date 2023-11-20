import 'package:flutter/material.dart';

class ChangeThemeProvider extends ChangeNotifier{
  ThemeData _currentTheme = ThemeData.light();

  ThemeData get currentTheme => _currentTheme;

  void updateTheme(ThemeData newTheme) {
    _currentTheme = newTheme;
    notifyListeners();
  }


}