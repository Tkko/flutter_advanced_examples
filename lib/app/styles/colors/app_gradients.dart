import 'package:flutter/material.dart';

@immutable
class AppGradients extends ThemeExtension<AppGradients> {
  const AppGradients({
    required this.primary,
  });

  final Gradient primary;

  @override
  ThemeExtension<AppGradients> lerp(
    covariant ThemeExtension<AppGradients>? other,
    double t,
  ) {
    if (other is! AppGradients) {
      return this;
    }
    return AppGradients(
      primary: Gradient.lerp(primary, other.primary, t)!,
    );
  }

  @override
  AppGradients copyWith({
    Gradient? primary,
    Gradient? secondary,
    Gradient? tertiary,
  }) {
    return AppGradients(
      primary: primary ?? this.primary,
    );
  }
}
