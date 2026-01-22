import 'package:flutter/material.dart';
import 'package:kmax/core/utils/app_color.dart';

class ColorThemeData {
   const  ColorThemeData({
    required this.brand,
    required this.neutral,
    required this.error,
    required this.success,
  });
  final MaterialColor brand;
  final MaterialColor neutral;
  final MaterialColor error;
  final MaterialColor success;



  static ColorThemeData light() => ColorThemeData(
    brand: AppColor.brandLight,
    neutral: AppColor.neutralLight,
    error: AppColor.errorLight,
    success: AppColor.successLight,
  );

  static ColorThemeData dark() => ColorThemeData(
    brand: AppColor.brandDark,
    neutral: AppColor.neutralDark,
    error: AppColor.errorDark,
    success: AppColor.successDark,
  );
}
