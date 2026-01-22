import 'package:flutter/material.dart';
import 'package:kmax/core/utils/app_typography.dart';

class TextStyleTheme extends InheritedWidget {
  final PrimaryStyles styles;

  const TextStyleTheme({
    super.key,
    required this.styles,
    required super.child,
  });

  static PrimaryStyles of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<TextStyleTheme>();
    assert(widget != null, 'TextStyleTheme not found');
    return widget!.styles;
  }

  @override
  bool updateShouldNotify(TextStyleTheme oldWidget) {
    return oldWidget.styles != styles;
  }
}
