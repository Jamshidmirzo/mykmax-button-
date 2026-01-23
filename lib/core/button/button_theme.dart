import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kmax/core/button/button_theme_data.dart';

class CustomButtonTheme extends InheritedWidget {
  const CustomButtonTheme({
    super.key,
    required this.theme,
    required super.child,
  });
  final CustomButtonThemeData theme;

  static CustomButtonThemeData of(
    BuildContext context, {
    bool createDependency = true,
  }) {
    return maybeOf(context, createDependency: createDependency)!;
  }

  static CustomButtonThemeData? maybeOf(
    BuildContext context, {
    bool createDependency = true,
  }) {
    try {
      if (createDependency) {
        return context
            .dependOnInheritedWidgetOfExactType<CustomButtonTheme>()
            ?.theme;
      }
      log('I WORRRRKKKK');

      return context.getInheritedWidgetOfExactType<CustomButtonTheme>()?.theme;
    } catch (e) {
      throw UnimplementedError(
        '$CustomButtonTheme not found in context',
      );
    }
  }

  @override
  bool updateShouldNotify(covariant CustomButtonTheme oldWidget) {
    return oldWidget.theme != theme;
  }
}
