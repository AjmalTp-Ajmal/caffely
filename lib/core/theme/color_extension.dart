import 'package:flutter/material.dart';

class ColorExtension extends ThemeExtension<ColorExtension> {
  final Color primary;
  final Color secondry;
  final Color subtextclr;
  final Color buttonclr;
  final Color subbuttonclr;
  final Color errorclr;

  ColorExtension(
      {required this.primary,
      required this.secondry,
      required this.subtextclr,
      required this.buttonclr,
      required this.subbuttonclr,
      required this.errorclr});

  @override
  ThemeExtension<ColorExtension> copyWith() {
    Color? primary;
    Color? secondry;
    Color? subtextclr;
    Color? buttonclr;
    Color? subbuttonclr;
    Color? errorclr;

    return ColorExtension(
      primary: primary ?? this.primary,
      secondry: secondry ?? this.secondry,
      subtextclr: subtextclr ?? this.subtextclr,
      buttonclr: buttonclr ?? this.buttonclr,
      subbuttonclr: subbuttonclr ?? this.subbuttonclr,
      errorclr: errorclr ?? this.errorclr,
    );
  }

  @override
  ThemeExtension<ColorExtension> lerp(
      covariant ThemeExtension<ColorExtension>? other, double t) {
    if (other is! ColorExtension) {
      return this;
    }
    return ColorExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      secondry: Color.lerp(secondry, other.secondry, t)!,
      subtextclr: Color.lerp(subtextclr, other.subtextclr, t)!,
      buttonclr: Color.lerp(buttonclr, other.buttonclr, t)!,
      subbuttonclr: Color.lerp(subbuttonclr, other.subbuttonclr, t)!,
      errorclr: Color.lerp(errorclr, other.errorclr, t)!,
    );
  }
}
