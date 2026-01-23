import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kmax/core/model/style_model.dart';
import 'package:kmax/core/themes/theme_app.dart';

enum AppButtonSize { xl, lg, md, sm, xs }

sealed class AppButtonState {
  const AppButtonState();

  const factory AppButtonState.normal() = _Normal;
  const factory AppButtonState.neutral() = _Neutral;
  const factory AppButtonState.error() = _Error;
  const factory AppButtonState.link() = _Link;
  const factory AppButtonState.tertiary() = _Tertiary;
  const factory AppButtonState.outline() = _Outline;

  Color bg(ColorThemeData colors);
  Color hoverBg(ColorThemeData colors);
  Color focusedBg(ColorThemeData colors);
  Color pressedBg(ColorThemeData colors);
  Color disabledBg(ColorThemeData colors);

  StyleModel style(ColorThemeData colors);
  StyleModel hoverStyle(ColorThemeData colors);
  StyleModel focusedStyle(ColorThemeData colors);
  StyleModel pressedStyle(ColorThemeData colors);
  StyleModel disabledStyle(ColorThemeData colors);

  BorderSide side(ColorThemeData colors);
  BorderSide hoverSide(ColorThemeData colors);
  BorderSide focusedSide(ColorThemeData colors);
  BorderSide disabledSide(ColorThemeData colors);

  OutlinedBorder shape(BuildContext context, {bool isIconOnly = false}) {
    if (isIconOnly) return const CircleBorder();
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100.r),
    );
  }
}

class _Normal extends AppButtonState {
  const _Normal();

  @override
  Color bg(ColorThemeData colors) => colors.brand;

  @override
  Color hoverBg(ColorThemeData colors) => colors.brand.shade400;

  @override
  Color focusedBg(ColorThemeData colors) => colors.brand.shade600;

  @override
  Color pressedBg(ColorThemeData colors) =>
      colors.brand.shade600.withValues(alpha: 0.8);

  @override
  Color disabledBg(ColorThemeData colors) => colors.neutral.shade200;

  @override
  StyleModel style(ColorThemeData colors) =>
      StyleModel(contentColor: colors.neutral.shade50);

  @override
  StyleModel hoverStyle(ColorThemeData colors) => style(colors);

  @override
  StyleModel focusedStyle(ColorThemeData colors) => style(colors);

  @override
  StyleModel pressedStyle(ColorThemeData colors) => style(colors);

  @override
  StyleModel disabledStyle(ColorThemeData colors) =>
      StyleModel(contentColor: colors.neutral.shade300);

  @override
  BorderSide side(ColorThemeData colors) => BorderSide.none;

  @override
  BorderSide hoverSide(ColorThemeData colors) => side(colors);

  @override
  BorderSide focusedSide(ColorThemeData colors) =>
      BorderSide(color: colors.brand.shade700, width: 4);

  @override
  BorderSide disabledSide(ColorThemeData colors) => side(colors);
}

class _Neutral extends AppButtonState {
  const _Neutral();

  @override
  Color bg(ColorThemeData colors) => colors.neutral.shade50;

  @override
  Color hoverBg(ColorThemeData colors) => colors.brand.shade100;

  @override
  Color focusedBg(ColorThemeData colors) => colors.neutral.shade50;

  @override
  Color pressedBg(ColorThemeData colors) => colors.neutral.shade50;

  @override
  Color disabledBg(ColorThemeData colors) => colors.neutral.shade200;

  @override
  StyleModel style(ColorThemeData colors) =>
      StyleModel(contentColor: colors.neutral.shade800);

  @override
  StyleModel hoverStyle(ColorThemeData colors) => style(colors);

  @override
  StyleModel focusedStyle(ColorThemeData colors) => style(colors);

  @override
  StyleModel pressedStyle(ColorThemeData colors) =>
      StyleModel(contentColor: colors.brand);

  @override
  StyleModel disabledStyle(ColorThemeData colors) =>
      StyleModel(contentColor: colors.neutral.shade300);

  @override
  BorderSide side(ColorThemeData colors) => BorderSide.none;

  @override
  BorderSide hoverSide(ColorThemeData colors) => side(colors);

  @override
  BorderSide focusedSide(ColorThemeData colors) => BorderSide(
    color: colors.neutral.shade200,
    width: 4,
  );

  @override
  BorderSide disabledSide(ColorThemeData colors) => side(colors);
}

class _Error extends AppButtonState {
  const _Error();

  @override
  Color bg(ColorThemeData colors) => colors.error;

  @override
  Color hoverBg(ColorThemeData colors) => colors.error.shade700;

  @override
  Color focusedBg(ColorThemeData colors) => colors.error.shade700;

  @override
  Color pressedBg(ColorThemeData colors) => colors.error.shade50;

  @override
  Color disabledBg(ColorThemeData colors) => colors.neutral.shade400;

  @override
  StyleModel style(ColorThemeData colors) =>
      StyleModel(contentColor: colors.neutral.shade50);

  @override
  StyleModel hoverStyle(ColorThemeData colors) => style(colors);

  @override
  StyleModel focusedStyle(ColorThemeData colors) => style(colors);

  @override
  StyleModel pressedStyle(ColorThemeData colors) =>
      StyleModel(contentColor: colors.error);

  @override
  StyleModel disabledStyle(ColorThemeData colors) =>
      StyleModel(contentColor: colors.neutral.shade300);

  @override
  BorderSide side(ColorThemeData colors) => BorderSide.none;

  @override
  BorderSide hoverSide(ColorThemeData colors) => side(colors);

  @override
  BorderSide focusedSide(ColorThemeData colors) => side(colors);

  @override
  BorderSide disabledSide(ColorThemeData colors) => side(colors);
}

class _Link extends AppButtonState {
  const _Link();

  @override
  Color bg(ColorThemeData colors) => Colors.transparent;

  @override
  Color hoverBg(ColorThemeData colors) => Colors.transparent;

  @override
  Color focusedBg(ColorThemeData colors) => Colors.transparent;

  @override
  Color pressedBg(ColorThemeData colors) => Colors.transparent;

  @override
  Color disabledBg(ColorThemeData colors) => Colors.transparent;

  @override
  StyleModel style(ColorThemeData colors) =>
      StyleModel(contentColor: colors.brand);

  @override
  StyleModel hoverStyle(ColorThemeData colors) =>
      StyleModel(contentColor: colors.brand.shade700);

  @override
  StyleModel focusedStyle(ColorThemeData colors) =>
      StyleModel(contentColor: colors.brand.shade700);

  @override
  StyleModel pressedStyle(ColorThemeData colors) =>
      StyleModel(contentColor: colors.brand.shade500);

  @override
  StyleModel disabledStyle(ColorThemeData colors) =>
      StyleModel(contentColor: colors.neutral.shade200);

  @override
  BorderSide side(ColorThemeData colors) => BorderSide.none;

  @override
  BorderSide hoverSide(ColorThemeData colors) => side(colors);

  @override
  BorderSide focusedSide(ColorThemeData colors) =>
      BorderSide(color: colors.brand, width: 1);

  @override
  BorderSide disabledSide(ColorThemeData colors) => side(colors);

  @override
  OutlinedBorder shape(BuildContext context, {bool isIconOnly = false}) =>
      const LinearBorder(
        bottom: LinearBorderEdge(size: 1.0),
      );
}

class _Tertiary extends AppButtonState {
  const _Tertiary();

  @override
  Color bg(ColorThemeData colors) => Colors.transparent;

  @override
  Color hoverBg(ColorThemeData colors) => Colors.transparent;

  @override
  Color focusedBg(ColorThemeData colors) => Colors.transparent;

  @override
  Color pressedBg(ColorThemeData colors) => Colors.transparent;

  @override
  Color disabledBg(ColorThemeData colors) => Colors.transparent;

  @override
  StyleModel style(ColorThemeData colors) =>
      StyleModel(contentColor: colors.neutral.shade50);

  @override
  StyleModel hoverStyle(ColorThemeData colors) => style(colors);

  @override
  StyleModel focusedStyle(ColorThemeData colors) => style(colors);

  @override
  StyleModel pressedStyle(ColorThemeData colors) => style(colors);

  @override
  StyleModel disabledStyle(ColorThemeData colors) =>
      StyleModel(contentColor: colors.neutral.shade200);

  @override
  BorderSide side(ColorThemeData colors) =>
      BorderSide(color: colors.neutral.shade200, width: 1);

  @override
  BorderSide hoverSide(ColorThemeData colors) => side(colors);

  @override
  BorderSide focusedSide(ColorThemeData colors) => side(colors);

  @override
  BorderSide disabledSide(ColorThemeData colors) => side(colors);
}

class _Outline extends AppButtonState {
  const _Outline();

  @override
  Color bg(ColorThemeData colors) => Colors.transparent;

  @override
  Color hoverBg(ColorThemeData colors) => Colors.transparent;

  @override
  Color focusedBg(ColorThemeData colors) => Colors.transparent;

  @override
  Color pressedBg(ColorThemeData colors) => Colors.transparent;

  @override
  Color disabledBg(ColorThemeData colors) => Colors.transparent;

  @override
  StyleModel style(ColorThemeData colors) =>
      StyleModel(contentColor: colors.error);

  @override
  StyleModel hoverStyle(ColorThemeData colors) =>
      StyleModel(contentColor: colors.error.shade700);

  @override
  StyleModel focusedStyle(ColorThemeData colors) =>
      StyleModel(contentColor: colors.error.shade500);

  @override
  StyleModel pressedStyle(ColorThemeData colors) => style(colors);

  @override
  StyleModel disabledStyle(ColorThemeData colors) =>
      StyleModel(contentColor: colors.neutral.shade300);

  @override
  BorderSide side(ColorThemeData colors) =>
      BorderSide(color: colors.error.shade500, width: 2);

  @override
  BorderSide hoverSide(ColorThemeData colors) =>
      BorderSide(color: colors.error.shade700, width: 2);

  @override
  BorderSide focusedSide(ColorThemeData colors) =>
      BorderSide(color: colors.error.shade500, width: 4);

  @override
  BorderSide disabledSide(ColorThemeData colors) =>
      BorderSide(color: colors.neutral.shade300, width: 2);
}
