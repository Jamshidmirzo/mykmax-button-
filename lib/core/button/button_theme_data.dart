// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kmax/core/button/button_states.dart';

class CustomButtonThemeData {
  final AppButtonSize size;
  final AppButtonState state;
  Color? bgColor;
  final Color? borderColor;
  final double? borderRadius;
  double? height;
  double? borderWidth;
  double? padding;
  Color? contentColor;
  TextStyle? textStyle;
  double? iconSize;

  CustomButtonThemeData({
    required this.size,
    required this.state,
    this.bgColor,
    this.borderColor,
    this.borderRadius,
    this.height,
    this.borderWidth,
    this.padding,
    this.contentColor,
    this.textStyle,
    this.iconSize,
  });

  // bgColor = bgColor ?? _getBgColor(state, context);
  // height = height ?? _getHeight(size);
  // padding = padding ?? _getPadding(size);

  CustomButtonThemeData copyWith({
    AppButtonSize? size,
    AppButtonState? state,
    Color? bgColor,
    Color? borderColor,
    double? borderRadius,
    double? height,
    double? borderWidth,
    double? padding,
    Color? contentColor,
    TextStyle? textStyle,
    double? iconSize,
  }) {
    return CustomButtonThemeData(
      iconSize: iconSize ?? this.iconSize,
      textStyle: textStyle ?? this.textStyle,
      borderWidth: borderWidth ?? this.borderWidth,
      size: size ?? this.size,
      state: state ?? this.state,
      bgColor: bgColor ?? this.bgColor,
      borderColor: borderColor ?? this.borderColor,
      borderRadius: borderRadius ?? this.borderRadius,
      height: height ?? this.height,
      padding: padding ?? this.padding,
      contentColor: contentColor ?? this.contentColor,
    );
  }
}




