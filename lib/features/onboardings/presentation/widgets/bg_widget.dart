import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:kmax/core/utils/app_color.dart';
import 'package:kmax/features/onboardings/presentation/screens/onboarding_screen.dart';

class BgWidget extends ConsumerWidget {
  final OnboardingStep step;
  final int index;
  const BgWidget({
    super.key,
    required this.index,
    required this.step,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.only(bottom: 30.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(step.stepImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              textAlign: TextAlign.center,
              step.displayName(),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColor.white,
                fontSize: 32.sp,
              ),
            ),
            Gap(150.h), // Space for static controls
          ],
        ),
      ),
    );
  }
}
