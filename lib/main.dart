import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kmax/core/router/router.dart';
import 'package:kmax/core/button/button_theme_data.dart';
import 'package:kmax/core/button/button_theme.dart';
import 'package:kmax/core/button/button_states.dart';
import 'package:kmax/core/themes/color_themes.dart';
import 'package:kmax/core/themes/theme_app.dart';
import 'package:kmax/core/utils/app_typography.dart';
import 'package:kmax/core/themes/text_style_theme.dart';
import 'package:kmax/features/onboardings/presentation/providers/onboarding_provider.dart';
import 'package:kmax/service_locator.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    ref.read(onboardingProvider.notifier).load();
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(goRouterProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: ColorThemes(
        color: isDark ? ColorThemeData.dark() : ColorThemeData.light(),
        child: Builder(
          builder: (context) {
            return CustomButtonTheme(
              theme: CustomButtonThemeData(
                size: AppButtonSize.md,
                state: AppButtonState.normal,
                borderRadius: 30,
              ),
              child: TextStyleTheme(
                styles: PrimaryStyles.mobile(),
                child: MaterialApp.router(
                  themeMode: ThemeMode.system,
                  debugShowCheckedModeBanner: false,
                  routerConfig: router,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
