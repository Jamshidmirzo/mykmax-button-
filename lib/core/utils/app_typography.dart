import 'package:flutter/material.dart';

class AppTypography {
  // static const String _fontFamily = 'GoogleSans';

  static TextStyle _base({
    required double size,
    required double lineHeight,
    required FontWeight weight,
    Color? color,
    double? letterSpacing,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      // fontFamily: _fontFamily,
      fontSize: size,
      height: lineHeight / size,
      fontWeight: weight,
      color: color,
      letterSpacing: letterSpacing,
      decoration: decoration,
    );
  }

  static TextStyle title1(FontWeight weight) =>
      _base(size: 72, lineHeight: 88, weight: weight);

  static TextStyle title2(FontWeight weight) =>
      _base(size: 64, lineHeight: 76, weight: weight);

  static TextStyle h1(FontWeight weight) =>
      _base(size: 56, lineHeight: 68, weight: weight);

  static TextStyle h2(FontWeight weight) =>
      _base(size: 48, lineHeight: 58, weight: weight);

  static TextStyle h3(FontWeight weight) =>
      _base(size: 40, lineHeight: 48, weight: weight);

  static TextStyle h4(FontWeight weight) =>
      _base(size: 32, lineHeight: 34, weight: weight);

  static TextStyle h5(FontWeight weight) =>
      _base(size: 24, lineHeight: 30, weight: weight);

  static TextStyle h6(FontWeight weight) =>
      _base(size: 20, lineHeight: 24, weight: weight);

  static TextStyle label1(FontWeight weight) =>
      _base(size: 16, lineHeight: 22, weight: weight);

  static TextStyle label2(FontWeight weight) =>
      _base(size: 14, lineHeight: 20, weight: weight);

  static TextStyle label3(FontWeight weight) =>
      _base(size: 12, lineHeight: 16, weight: weight);
}

class FontWeights {
  static const bold = FontWeight.w700;
  static const semiBold = FontWeight.w600;
  static const medium = FontWeight.w500;
  static const regular = FontWeight.w400;
}

class PrimaryStyles {
  const PrimaryStyles({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.h6,
    required this.title1,
    required this.title2,
    required this.label1,
    required this.label2,
    required this.label3,
  });

  factory PrimaryStyles.mobile() {
    return PrimaryStyles(
      h1: PrimaryStyle(
        bold: AppTypography.h1(FontWeights.bold),
        semibold: AppTypography.h1(FontWeights.semiBold),
        medium: AppTypography.h1(FontWeights.medium),
        regular: AppTypography.h1(FontWeights.regular),
      ),
      h2: PrimaryStyle(
        bold: AppTypography.h2(FontWeights.bold),
        semibold: AppTypography.h2(FontWeights.semiBold),
        medium: AppTypography.h2(FontWeights.medium),
        regular: AppTypography.h2(FontWeights.regular),
      ),
      h3: PrimaryStyle(
        bold: AppTypography.h3(FontWeights.bold),
        semibold: AppTypography.h3(FontWeights.semiBold),
        medium: AppTypography.h3(FontWeights.medium),
        regular: AppTypography.h3(FontWeights.regular),
      ),
      h4: PrimaryStyle(
        bold: AppTypography.h4(FontWeights.bold),
        semibold: AppTypography.h4(FontWeights.semiBold),
        medium: AppTypography.h4(FontWeights.medium),
        regular: AppTypography.h4(FontWeights.regular),
      ),
      h5: PrimaryStyle(
        bold: AppTypography.h5(FontWeights.bold),
        semibold: AppTypography.h5(FontWeights.semiBold),
        medium: AppTypography.h5(FontWeights.medium),
        regular: AppTypography.h5(FontWeights.regular),
      ),
      h6: PrimaryStyle(
        bold: AppTypography.h6(FontWeights.bold),
        semibold: AppTypography.h6(FontWeights.semiBold),
        medium: AppTypography.h6(FontWeights.medium),
        regular: AppTypography.h6(FontWeights.regular),
      ),
      title1: PrimaryStyle(
        bold: AppTypography.title1(FontWeights.bold),
        semibold: AppTypography.title1(FontWeights.semiBold),
        medium: AppTypography.title1(FontWeights.medium),
        regular: AppTypography.title1(FontWeights.regular),
      ),
      title2: PrimaryStyle(
        bold: AppTypography.title2(FontWeights.bold),
        semibold: AppTypography.title2(FontWeights.semiBold),
        medium: AppTypography.title2(FontWeights.medium),
        regular: AppTypography.title2(FontWeights.regular),
      ),
      label1: PrimaryStyle(
        bold: AppTypography.label1(FontWeights.bold),
        semibold: AppTypography.label1(FontWeights.semiBold),
        medium: AppTypography.label1(FontWeights.medium),
        regular: AppTypography.label1(FontWeights.regular),
      ),
      label2: PrimaryStyle(
        bold: AppTypography.label2(FontWeights.bold),
        semibold: AppTypography.label2(FontWeights.semiBold),
        medium: AppTypography.label2(FontWeights.medium),
        regular: AppTypography.label2(FontWeights.regular),
      ),
      label3: PrimaryStyle(
        bold: AppTypography.label3(FontWeights.bold),
        semibold: AppTypography.label3(FontWeights.semiBold),
        medium: AppTypography.label3(FontWeights.medium),
        regular: AppTypography.label3(FontWeights.regular),
      ),
    );
  }

  final PrimaryStyle h1;
  final PrimaryStyle h2;
  final PrimaryStyle h3;
  final PrimaryStyle h4;
  final PrimaryStyle h5;
  final PrimaryStyle h6;

  final PrimaryStyle title1;
  final PrimaryStyle title2;
  final PrimaryStyle label1;
  final PrimaryStyle label2;
  final PrimaryStyle label3;
}

class PrimaryStyle {
  const PrimaryStyle({
    required this.bold,
    required this.semibold,
    required this.medium,
    required this.regular,
  });
  final TextStyle bold;
  final TextStyle semibold;
  final TextStyle medium;
  final TextStyle regular;
}
