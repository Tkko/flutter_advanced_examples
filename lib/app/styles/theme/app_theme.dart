import 'package:flutter/material.dart';
import 'app_dark_theme.dart';
import 'app_light_theme.dart';
import 'app_theme_base.dart';

class AppTheme extends ChangeNotifier {
  AppTheme({
    required BuildContext context,
  }) {
    _context = context;
    _init();
  }

  late final BuildContext _context;
  late final AppThemeBase _darkTheme = const AppDarkTheme();
  late final AppThemeBase _lightTheme = const AppLightTheme();
  Brightness _brightness = Brightness.dark;

  ThemeMode get themeMode {
    switch (_brightness) {
      case Brightness.light:
        return ThemeMode.light;
      case Brightness.dark:
        return ThemeMode.dark;
    }
  }

  ThemeData get lightTheme => _lightTheme.themeData;

  ThemeData get darkTheme => _darkTheme.themeData;

  /// Initialize the theme based on the platform brightness AKA system theme
  void _init() {
    final view = View.of(_context);
    final brightness = MediaQueryData.fromView(view).platformBrightness;
    onBrightnessChanged(brightness);
  }

  void toggleThemeMode() {
    _brightness =
        _brightness == Brightness.light ? Brightness.dark : Brightness.light;
    notifyListeners();
  }

  /// Called when the user changes the system theme
  void onBrightnessChanged(Brightness value) {
    if (_brightness != value) {
      _brightness = value;
      notifyListeners();
    }
  }
}
