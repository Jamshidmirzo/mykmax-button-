// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'package:kmax/core/button/button_states.dart';
import 'package:kmax/core/button/button_theme.dart';
import 'package:kmax/core/button/button_theme_data.dart';
import 'package:kmax/core/button/button_size_extension.dart';
import 'package:kmax/core/model/style_model.dart';
import 'package:kmax/core/themes/color_themes.dart';
import 'package:kmax/core/themes/theme_app.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
    this.size,
    this.leftIcon,
    this.rightIcon,
    this.title,
    this.state,
    this.onTap,
    this.autofocus = false,
  });

  final AppButtonSize? size;
  final String? leftIcon;
  final String? rightIcon;
  final String? title;
  final AppButtonState? state;
  final VoidCallback? onTap;
  final bool autofocus;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final CustomButtonThemeData effectiveTheme = CustomButtonTheme.of(context);
    final AppButtonSize effectiveSize = widget.size ?? effectiveTheme.size;
    final ColorThemeData colors = ColorThemes.of(context)!;

    final bool isIconOnly =
        widget.title == null &&
        ((widget.leftIcon != null && widget.rightIcon == null) ||
            (widget.leftIcon == null && widget.rightIcon != null));

    final AppButtonState currentState = widget.state ?? effectiveTheme.state;

    final double height = effectiveTheme.height ?? effectiveSize.height;
    final double padding = effectiveTheme.padding ?? effectiveSize.padding;
    final double iconLeftWidth = effectiveSize.iconLeftWidth;
    final double iconLeftHeight = effectiveSize.iconLeftHeight;
    final double iconRightWidth = effectiveSize.iconRightWidth;
    final double iconRightHeight = effectiveSize.iconRightHeight;
    final double gapLeft = effectiveSize.gapLeft;
    final double gapRight = effectiveSize.gapRight;
    final double fontSize = effectiveSize.fontSize;

    return TextButton(
      autofocus: widget.autofocus,
      onPressed: widget.onTap,
      style: ButtonStyle(
        fixedSize: WidgetStatePropertyAll(
          Size(
            isIconOnly ? height : double.nan,
            height,
          ),
        ),
        padding: WidgetStateProperty.all(EdgeInsets.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity(
          horizontal: VisualDensity.minimumDensity,
          vertical: VisualDensity.minimumDensity,
        ),
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        splashFactory: NoSplash.splashFactory,
        foregroundColor: WidgetStateProperty.resolveWith((states) {
          return _resolveStyle(currentState, states, colors).contentColor;
        }),
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          return _resolveBg(currentState, states, colors);
        }),
        elevation: WidgetStateProperty.all(0),
        shape: WidgetStateProperty.resolveWith((states) {
          return _resolveShape(
            currentState,
            states,
            context,
            colors,
            isIconOnly,
          );
        }),
      ),
      child: _buildChild(
        currentState,
        iconLeftWidth,
        iconLeftHeight,
        iconRightWidth,
        iconRightHeight,
        gapLeft,
        gapRight,
        fontSize,
        colors,
        isIconOnly,
        padding,
      ),
    );
  }

  Widget _buildChild(
    AppButtonState state,
    double iconLeftWidth,
    double iconLeftHeight,
    double iconRightWidth,
    double iconRightHeight,
    double gapLeft,
    double gapRight,
    double fontSize,
    ColorThemeData colors,
    bool isIconOnly,
    double padding,
  ) {
    return Builder(
      builder: (context) {
        final iconColor =
            IconTheme.of(context).color ?? state.style(colors).contentColor;

        return Container(
          padding: isIconOnly
              ? EdgeInsets.zero
              : EdgeInsets.symmetric(horizontal: padding),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.leftIcon != null) ...[
                SizedBox(
                  width: iconLeftWidth,
                  height: iconLeftHeight,
                  child: SvgPicture.asset(
                    widget.leftIcon!,
                    colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
                    fit: BoxFit.contain,
                  ),
                ),
                if (widget.title != null) Gap(gapLeft),
              ],
              if (widget.title != null) ...[
                Text(
                  widget.title!,
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                ),
                if (widget.rightIcon != null) Gap(gapRight),
              ],
              if (widget.rightIcon != null)
                SizedBox(
                  width: iconRightWidth,
                  height: iconRightHeight,
                  child: SvgPicture.asset(
                    widget.rightIcon!,
                    colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
                    fit: BoxFit.contain,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  StyleModel _resolveStyle(
    AppButtonState state,
    Set<WidgetState> states,
    ColorThemeData colors,
  ) {
    if (states.contains(WidgetState.disabled)) {
      return state.disabledStyle(colors);
    }
    if (states.contains(WidgetState.pressed)) return state.pressedStyle(colors);
    if (states.contains(WidgetState.hovered)) return state.hoverStyle(colors);
    if (states.contains(WidgetState.focused)) return state.focusedStyle(colors);
    return state.style(colors);
  }

  Color _resolveBg(
    AppButtonState state,
    Set<WidgetState> states,
    ColorThemeData colors,
  ) {
    if (states.contains(WidgetState.disabled)) return state.disabledBg(colors);
    if (states.contains(WidgetState.pressed)) return state.pressedBg(colors);
    if (states.contains(WidgetState.hovered)) return state.hoverBg(colors);
    if (states.contains(WidgetState.focused)) return state.focusedBg(colors);
    return state.bg(colors);
  }

  OutlinedBorder _resolveShape(
    AppButtonState state,
    Set<WidgetState> states,
    BuildContext context,
    ColorThemeData colors,
    bool isIconOnly,
  ) {
    final shape = state.shape(context, isIconOnly: isIconOnly);
    final BorderSide side;

    if (states.contains(WidgetState.disabled)) {
      side = state.disabledSide(colors);
    } else if (states.contains(WidgetState.focused)) {
      side = state.focusedSide(colors);
    } else if (states.contains(WidgetState.hovered)) {
      side = state.hoverSide(colors);
    } else {
      side = state.side(colors);
    }

    return shape.copyWith(side: side);
  }
}
