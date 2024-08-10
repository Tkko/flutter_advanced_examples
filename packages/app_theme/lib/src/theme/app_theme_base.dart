import 'package:flutter/material.dart';

abstract class AppThemeBase {
  const AppThemeBase({
    required this.themeData,
  });

  final ThemeData themeData;
}
