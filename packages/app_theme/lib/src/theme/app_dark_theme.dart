import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../app_font_families.dart';
import '../colors/app_dark_colors.dart';
import 'app_theme_base.dart';

class AppDarkTheme implements AppThemeBase {
  const AppDarkTheme();

  @override
  ThemeData get themeData {
    const palette = AppDarkColors();
    return ThemeData(
      useMaterial3: true,
      extensions: const [palette],
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: palette.primary,
        onPrimary: palette.elPrimary,
        secondary: palette.secondary,
        onSecondary: palette.elPrimary,
        error: palette.error,
        onError: palette.elPrimary,
        outline: palette.outline,
        surface: palette.surface,
        onSurface: palette.elPrimary,
        onSurfaceVariant: palette.elPrimary,
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: palette.elPrimary,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          fontFamily: AppFontFamilies.nunito,
        ),
        labelMedium: TextStyle(
          color: palette.elPrimary,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          fontFamily: AppFontFamilies.nunito,
        ),
      ),
      listTileTheme: ListTileThemeData(
        tileColor: palette.surfaceContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        // This sets selectionHandleColor on iOS
        primaryColor: palette.primary,
        scaffoldBackgroundColor: palette.surface,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: palette.primary,
        selectionColor: palette.primary,
        selectionHandleColor: palette.primary,
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: palette.surface,
        elevation: 0,
        surfaceTintColor: palette.primary,
      ),
    );
  }
}
