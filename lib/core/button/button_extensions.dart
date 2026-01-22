import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kmax/core/button/button_states.dart';
import 'package:kmax/core/model/style_model.dart';
import 'package:kmax/core/extension/extension.dart';

extension AppButtonSizeExtension on AppButtonSize {
  double get height {
    switch (this) {
      case AppButtonSize.xl:
        return 56;
      case AppButtonSize.lg:
        return 48;
      case AppButtonSize.md:
        return 42;
      case AppButtonSize.sm:
        return 32;
      case AppButtonSize.xs:
        return 24;
    }
  }

  double get padding {
    switch (this) {
      case AppButtonSize.xl:
        return 24;
      case AppButtonSize.lg:
        return 20;
      case AppButtonSize.md:
        return 17;
      case AppButtonSize.sm:
        return 12;
      case AppButtonSize.xs:
        return 10;
    }
  }

  double get iconSize {
    switch (this) {
      case AppButtonSize.xl:
        return 24;
      case AppButtonSize.lg:
        return 20;
      case AppButtonSize.md:
        return 20;
      case AppButtonSize.sm:
        return 16;
      case AppButtonSize.xs:
        return 12;
    }
  }

  double get fontSize {
    switch (this) {
      case AppButtonSize.xl:
        return 16;
      case AppButtonSize.lg:
        return 16;
      case AppButtonSize.md:
        return 14;
      case AppButtonSize.sm:
        return 14;
      case AppButtonSize.xs:
        return 12;
    }
  }
}

extension AppButtonStateExtension on AppButtonState {
  Color bg(BuildContext context) {
    switch (this) {
      case AppButtonState.normal:
        return context.color.brand;
      case AppButtonState.neutral:
        return context.color.neutral.shade50;
      case AppButtonState.error:
        return context.color.error;
      case AppButtonState.link:
      case AppButtonState.thertiaty:
      case AppButtonState.outline:
        return Colors.transparent;
    }
  }

  Color hoverBg(BuildContext context) {
    switch (this) {
      case AppButtonState.normal:
        return Color(0xFFAD82FC);
      // return context.color.brand.withValues(alpha: 0.5);
      case AppButtonState.neutral:
        return context.color.brand.shade100;
      case AppButtonState.error:
        return context.color.error.shade700;
      case AppButtonState.link:
        return Colors.transparent;
      case AppButtonState.thertiaty:
      case AppButtonState.outline:
        return Colors.transparent;
    }
  }

  BorderSide hoverSide(BuildContext context) {
    switch (this) {
      case AppButtonState.link:
        return BorderSide(
          color: Colors.transparent,
          width: 1,
        );
      case AppButtonState.outline:
        return BorderSide(
          color: context.color.error.shade700,
          width: 2,
        );
      default:
        return side(context);
    }
  }

  StyleModel hoverStyle(BuildContext context) {
    switch (this) {
      case AppButtonState.link:
        return StyleModel(contentColor: context.color.brand.shade700);
      default:
        return style(context);
    }
  }

  Color pressedBg(BuildContext context) {
    return bg(context);
  }

  Color focusedBg(BuildContext context) {
    switch (this) {
      case AppButtonState.normal:
        return Color(0xFF8444FB);
      case AppButtonState.neutral:
        return context.color.neutral.shade50;
      case AppButtonState.error:
        return context.color.error.shade700;
      case AppButtonState.link:
        return Colors.transparent;
      case AppButtonState.thertiaty:
      case AppButtonState.outline:
        return Colors.transparent;
    }
  }

  StyleModel focusedStyle(BuildContext context) {
    switch (this) {
      case AppButtonState.link:
        return StyleModel(contentColor: context.color.brand.shade700);
      default:
        return style(context);
    }
  }

  BorderSide focusedSide(BuildContext context) {
    switch (this) {
      case AppButtonState.link:
        return BorderSide(
          color: context.color.brand,
          width: 1,
        );
      case AppButtonState.outline:
        return BorderSide(
          color: context.color.error.shade700,
          width: 4,
        );
      default:
        return side(context);
    }
  }

  Color disabledBg(BuildContext context) {
    switch (this) {
      case AppButtonState.normal:
      case AppButtonState.neutral:
        return context.color.neutral.shade200;
      case AppButtonState.error:
        return context.color.neutral.shade400;
      case AppButtonState.link:
      case AppButtonState.thertiaty:
      case AppButtonState.outline:
        return Colors.transparent;
    }
  }

  StyleModel disabledStyle(BuildContext context) {
    switch (this) {
      case AppButtonState.normal:
      case AppButtonState.neutral:
      case AppButtonState.error:
        return StyleModel(contentColor: context.color.neutral.shade300);
      case AppButtonState.link:
      case AppButtonState.thertiaty:
      case AppButtonState.outline:
        return StyleModel(contentColor: context.color.neutral.shade200);
    }
  }

  BorderSide disabledSide(BuildContext context) {
    switch (this) {
      case AppButtonState.outline:
        return BorderSide(
          color: context.color.neutral.shade300,
          width: 2,
        );
      default:
        return side(context);
    }
  }

  StyleModel style(BuildContext context) {
    switch (this) {
      case AppButtonState.normal:
        return StyleModel(contentColor: context.color.neutral.shade50);
      case AppButtonState.neutral:
        return StyleModel(contentColor: context.color.neutral.shade800);
      case AppButtonState.error:
        return StyleModel(contentColor: context.color.neutral.shade50);
      case AppButtonState.link:
        return StyleModel(contentColor: context.color.brand);
      case AppButtonState.thertiaty:
        return StyleModel(contentColor: context.color.neutral.shade50);
      case AppButtonState.outline:
        return StyleModel(
          contentColor: context.color.error,
        ); // Default outline is error? Or brand? Using error based on context.
    }
  }

  OutlinedBorder shape(BuildContext context) {
    switch (this) {
      case AppButtonState.link:
        return LinearBorder.bottom();
      default:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.r),
        );
    }
  }

  BorderSide side(BuildContext context) {
    switch (this) {
      case AppButtonState.link:
        return BorderSide(
          color: Colors.transparent,
          width: 1,
        );
      case AppButtonState.outline:
        return BorderSide(
          color: context.color.error.shade500,
          width: 2,
        );
      case AppButtonState.normal:
      case AppButtonState.neutral:
        return BorderSide(color: context.color.neutral.shade600);
      case AppButtonState.thertiaty:
      case AppButtonState.error:
        return BorderSide(
          color: context.color.neutral.shade200,
          width: 1,
        );
    }
  }
}
