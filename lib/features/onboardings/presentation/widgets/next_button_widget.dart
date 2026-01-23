import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';

import 'package:kmax/core/utils/app_color.dart';
import 'package:kmax/core/utils/app_icons.dart';

class NextButtonWidget extends StatelessWidget {
  final AnimationController animationController;
  final Function()? onTap;
  const NextButtonWidget({
    super.key,
    required this.animationController,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
       
          final adaptivePadding = animationController.value > 0.1 ? 2.0 : 5.0;
          
          return Container(
            padding: EdgeInsets.all(adaptivePadding),
            width: 58.w,
            height: 58.w,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 58.w,
                  height: 58.w,
                  child: CircularProgressIndicator(
                    value: animationController.value,
                    color: AppColor.white,
                    strokeWidth: 4,
                  ),
                ),
                LiquidGlassLayer(
                  settings: LiquidGlassSettings(visibility: 1),
                  child: LiquidGlass(
                    shape: LiquidRoundedRectangle(borderRadius: 1000.r),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColor.white.withValues(alpha: 0.5),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(AppIcons.arrowRight),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
