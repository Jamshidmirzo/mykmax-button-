import 'package:flutter/material.dart';
import 'package:kmax/core/themes/color_themes.dart';
import 'package:kmax/core/themes/text_style_theme.dart';
import 'package:kmax/core/themes/theme_app.dart';
import 'package:kmax/core/utils/app_typography.dart';

extension TextShortcuts on BuildContext {
  PrimaryStyle get h1 => TextStyleTheme.of(this).h1;
  PrimaryStyle get h2 => TextStyleTheme.of(this).h2;
  PrimaryStyle get h3 => TextStyleTheme.of(this).h3;
  PrimaryStyle get h4 => TextStyleTheme.of(this).h4;
  PrimaryStyle get h5 => TextStyleTheme.of(this).h5;
  PrimaryStyle get h6 => TextStyleTheme.of(this).h6;
  PrimaryStyle get title1 => TextStyleTheme.of(this).title1;
  PrimaryStyle get title2 => TextStyleTheme.of(this).title2;
  PrimaryStyle get label1 => TextStyleTheme.of(this).label1;
  PrimaryStyle get label2 => TextStyleTheme.of(this).label2;
  PrimaryStyle get label3 => TextStyleTheme.of(this).label3;

  ColorThemeData get color => ColorThemes.of(this)!;
}
