import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kmax/core/router/router.dart';
import 'package:kmax/features/onboardings/presentation/providers/onboarding_provider.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';

class SkipWidget extends ConsumerWidget {
  const SkipWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(onboardingProvider);
    return InkWell(
      borderRadius: BorderRadius.circular(100.r),
      onTap: () {
        ref.read(onboardingProvider.notifier).save(true);
        log(provider.isShowed.toString());
        provider.isShowed ? LoginRoute().go(context) : null;
      },
      child: LiquidGlassLayer(
        settings: LiquidGlassSettings(
          thickness: 55,
          glassColor: Colors.transparent,
        ),
        child: LiquidGlass(
          shape: LiquidRoundedSuperellipse(borderRadius: 30),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            height: 32.h,
            child: Text(
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              'Пропустить',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 14.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
