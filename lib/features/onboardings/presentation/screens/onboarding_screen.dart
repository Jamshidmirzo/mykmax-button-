import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:kmax/core/router/app_routes.dart';
import 'package:kmax/features/onboardings/presentation/widgets/next_button_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:kmax/core/utils/app_color.dart';
import 'package:kmax/core/utils/app_images.dart';
import 'package:kmax/features/auth/presentation/screens/login_screen.dart';
import 'package:kmax/features/onboardings/presentation/providers/onboarding_provider.dart';
import 'package:kmax/features/onboardings/presentation/widgets/bg_widget.dart';
import 'package:kmax/features/onboardings/presentation/widgets/language_selector_widget.dart';
import 'package:kmax/features/onboardings/presentation/widgets/skip_widget.dart';
import 'package:kmax/core/widgets/custom_app_bar.dart';

enum OnboardingStep {
  step1(stepImage: AppImages.firstBg),
  step2(stepImage: AppImages.secondBg),
  step3(stepImage: AppImages.thirdBg)
  ;

  const OnboardingStep({required this.stepImage});

  String displayName([BuildContext? context]) {
    return switch (this) {
      step1 => 'Наслаждайтесь сериалами и фильмами',
      step2 => 'Единый аккаунт для нескольких профилей',
      step3 => 'Детский профиль',
    };
  }

  Duration get duration => Duration(seconds: 10);

  final String stepImage;
}

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({
    super.key,
    required this.userId,
  });

  final int userId;

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  final PageController pageController = PageController();
  final List<String> languages = ['Ру', 'En', 'Uz'];
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    _animationController.addStatusListener(_listener);
    _animationController.forward();
  }

  void _listener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      if (pageController.page?.round() == 2) {
        ref.read(onboardingProvider.notifier).save(true);
        ref.read(onboardingProvider).isShowed ? context.go(AppRoutes.login) : null;
      } else {
        pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      }
    }
  }

  @override
  void dispose() {
    _animationController.removeStatusListener(_listener);
    _animationController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final onboardingState = ref.watch(onboardingProvider);
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.mainBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            PageView.builder(
              physics: NeverScrollableScrollPhysics(),
              controller: pageController,
              itemCount: OnboardingStep.values.length,
              onPageChanged: (value) {
                _animationController.reset();
                _animationController.forward();
              },
              itemBuilder: (context, index) {
                return BgWidget(
                  step: OnboardingStep.values[index],
                  index: index,
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 30.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    NextButtonWidget(
                      animationController: _animationController,
                      onTap: () {
                        if (pageController.page?.round() == 2) {
                          ref.read(onboardingProvider.notifier).save(true);
                          onboardingState.isShowed
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                )
                              : null;
                        } else {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        }
                      },
                    ),
                    Gap(24),
                    SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        activeDotColor: AppColor.white,
                        dotColor: AppColor.white.withValues(alpha: 0.5),
                        dotHeight: 8.h,
                        dotWidth: 8.w,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: CustomAppBar(
        actions: const [SkipWidget()],
        backgroundColor: Colors.black,
        leadingWidth: 124.w,
        leading: LanguageSelectorWidget(
          languages: languages,
          selectedIndex: onboardingState.selectedLanguageIndex,
          onLanguageSelected: (index) {
            ref.read(onboardingProvider.notifier).setLanguage(index);
          },
          liquidGlassSettings: onboardingState.liquidGlassSettings,
        ),
      ),
    );
  }
}
