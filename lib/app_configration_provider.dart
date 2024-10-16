import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  ThemeMode currentThemeMode = ThemeMode.light;
void swapThemeMode(){
    if  (currentThemeMode ==  ThemeMode.light) {
      currentThemeMode = ThemeMode.dark;
    } else {
      currentThemeMode = ThemeMode.light;
    }
    notifyListeners();
    return;
  }
}