import 'package:kmax/core/button/button_states.dart';

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

  double get iconLeftWidth {
    switch (this) {
      case AppButtonSize.xl:
        return 20;
      case AppButtonSize.lg:
        return 16;
      case AppButtonSize.md:
        return 16;
      case AppButtonSize.sm:
        return 13;
      case AppButtonSize.xs:
        return 11;
    }
  }

  double get iconLeftHeight {
    switch (this) {
      case AppButtonSize.xl:
        return 19;
      case AppButtonSize.lg:
        return 16;
      case AppButtonSize.md:
        return 16;
      case AppButtonSize.sm:
        return 13;
      case AppButtonSize.xs:
        return 11;
    }
  }

  double get iconRightWidth {
    switch (this) {
      case AppButtonSize.xl:
        return 18;
      case AppButtonSize.lg:
        return 15;
      case AppButtonSize.md:
        return 15;
      case AppButtonSize.sm:
        return 12;
      case AppButtonSize.xs:
        return 10;
    }
  }

  double get iconRightHeight {
    switch (this) {
      case AppButtonSize.xl:
        return 15;
      case AppButtonSize.lg:
        return 13;
      case AppButtonSize.md:
        return 13;
      case AppButtonSize.sm:
        return 10;
      case AppButtonSize.xs:
        return 10;
    }
  }

  double get gapLeft {
    switch (this) {
      case AppButtonSize.xl:
        return 12;
      case AppButtonSize.lg:
        return 10;
      case AppButtonSize.md:
        return 8;
      case AppButtonSize.sm:
        return 6;
      case AppButtonSize.xs:
        return 4;
    }
  }

  double get gapRight {
    switch (this) {
      case AppButtonSize.xl:
        return 12;
      case AppButtonSize.lg:
        return 10;
      case AppButtonSize.md:
        return 8;
      case AppButtonSize.sm:
        return 6;
      case AppButtonSize.xs:
        return 4;
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
