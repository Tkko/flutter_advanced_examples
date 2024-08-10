import 'package:flutter/material.dart';
import 'colors/app_colors.dart';

extension BuildContextExt on BuildContext {
  Brightness get systemThemeMode => MediaQuery.of(this).platformBrightness;

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  TextStyle get bodyM => textTheme.bodyMedium!;

  TextStyle get labelS => textTheme.labelSmall!;

  Palette get palette => theme.extension<Palette>()!;

  ColorScheme get colorScheme => theme.colorScheme;
}
