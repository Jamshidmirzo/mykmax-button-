import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kmax/core/utils/app_color.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';

class LanguageSelectorWidget extends StatelessWidget {
  final List<String> languages;
  final int selectedIndex;
  final ValueChanged<int> onLanguageSelected;
  final LiquidGlassSettings liquidGlassSettings;

  const LanguageSelectorWidget({
    super.key,
    required this.languages,
    required this.selectedIndex,
    required this.onLanguageSelected,
    required this.liquidGlassSettings,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.h,
      child: LiquidGlassLayer(
        settings: liquidGlassSettings,
        child: LiquidGlass(
          shape: LiquidRoundedSuperellipse(borderRadius: 100),
          child: Row(
            children: List.generate(languages.length, (index) {
              return Expanded(
                child: GestureDetector(
                  onTap: () => onLanguageSelected(index),
                  child: Container(
                    margin: EdgeInsets.all(2),
                    alignment: Alignment.center,
                    height: 34.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000.r),
                      color: index == selectedIndex
                          ? AppColor.mainColor.withValues(alpha: 0.5)
                          : null,
                    ),
                    child: Text(
                      languages[index],
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColor.white,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
