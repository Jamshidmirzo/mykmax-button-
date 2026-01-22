// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kmax/core/themes/theme_app.dart';


class ColorThemes extends InheritedWidget {
  final ColorThemeData color;
  const ColorThemes({
    super.key,
    required this.color,
    required super.child,
  });
  @override
  bool updateShouldNotify(covariant ColorThemes oldWidget) {
    return oldWidget.color != color;
  }

  static ColorThemeData? of(BuildContext context) {
    final widget = context
        .dependOnInheritedWidgetOfExactType<ColorThemes>()
        ?.color;
    return widget;
  }
}
