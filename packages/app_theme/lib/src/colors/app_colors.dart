import 'package:flutter/material.dart';
import 'app_gradients.dart';

class Palette extends ThemeExtension<Palette> {
  const Palette._({
    required this.primary,
    required this.secondary,
    required this.surface,
    required this.surfaceContainer,
    required this.outline,
    required this.elPrimary,
    required this.elSecondary,
    required this.error,
    required this.success,
    required this.warning,
    required this.gradients,
  });

  const Palette.fromChild({
    required this.primary,
    required this.secondary,
    required this.surface,
    required this.surfaceContainer,
    required this.outline,
    required this.elPrimary,
    required this.elSecondary,
    required this.error,
    required this.success,
    required this.warning,
    required this.gradients,
  });

  //Primary
  final Color primary;

  // Secondary
  final Color secondary;

  // Surface
  final Color surface;
  final Color outline;
  final Color surfaceContainer;

  // Elements (Texts & Icons)
  final Color elPrimary;
  final Color elSecondary;

  // System
  final Color error;
  final Color success;
  final Color warning;

  // Gradients
  final AppGradients gradients;

  @override
  ThemeExtension<Palette> copyWith({
    Color? primary,
    Color? secondary,
    Color? surface,
    Color? surfaceContainer,
    Color? outline,
    Color? elPrimary,
    Color? elSecondary,
    Color? error,
    Color? success,
    Color? warning,
    AppGradients? gradients,
  }) {
    return Palette._(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      surface: surface ?? this.surface,
      surfaceContainer: surfaceContainer ?? this.surfaceContainer,
      outline: outline ?? this.outline,
      elPrimary: elPrimary ?? this.elPrimary,
      elSecondary: elSecondary ?? this.elSecondary,
      error: error ?? this.error,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      gradients: gradients ?? this.gradients,
    );
  }

  @override
  ThemeExtension<Palette> lerp(
    covariant ThemeExtension<Palette>? other,
    double t,
  ) {
    if (other is! Palette) {
      return this;
    }
    return Palette._(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceContainer: Color.lerp(surfaceContainer, other.surfaceContainer, t)!,
      outline: Color.lerp(outline, other.outline, t)!,
      elPrimary: Color.lerp(elPrimary, other.elPrimary, t)!,
      elSecondary: Color.lerp(elSecondary, other.elSecondary, t)!,
      error: Color.lerp(error, other.error, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      gradients: gradients.lerp(other.gradients, t) as AppGradients,
    );
  }
}
