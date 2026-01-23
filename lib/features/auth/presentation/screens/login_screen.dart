import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kmax/core/button/button_states.dart';
import 'package:kmax/core/button/button_widget.dart';
import 'package:kmax/core/themes/theme_provider.dart';
import 'package:kmax/core/utils/app_icons.dart';
import 'package:kmax/features/onboardings/presentation/providers/onboarding_provider.dart';


class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        leading: IconButton(
          onPressed: () {
            // Reset onboarding state for testing purposes
            ref.read(onboardingProvider.notifier).save(false);
          },
          icon: const Icon(Icons.logout_outlined),
          tooltip: 'Logout',
        ),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeModeProvider.notifier).toggleTheme();
            },
            icon: Icon(
              themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode,
            ),
            tooltip: 'Toggle Theme',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.center,
              children: [
                ButtonWidget(
                  state: const AppButtonState.normal(),
                  leftIcon: AppIcons.person,
                  rightIcon: AppIcons.arrowRight,
                  title: 'Primary',
                  onTap: () {},
                ),
                ButtonWidget(
                  state: const AppButtonState.normal(),
                  leftIcon: AppIcons.person,
                  title: 'Title',
                  onTap: () {},
                ),
                ButtonWidget(
                  state: const AppButtonState.normal(),
                  leftIcon: AppIcons.person,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),

            Column(
              children: [
                ButtonWidget(
                  state: const AppButtonState.neutral(),
                  leftIcon: AppIcons.person,
                  title: 'Neutral Button',
                  onTap: () {},
                ),
                const SizedBox(height: 12),
                ButtonWidget(
                  state: const AppButtonState.link(),
                  leftIcon: AppIcons.person,
                  title: 'Link Button',
                  onTap: () {},
                ),
                const SizedBox(height: 12),
                ButtonWidget(
                  state: const AppButtonState.error(),
                  leftIcon: AppIcons.person,
                  title: 'Error Button',
                  onTap: () {},
                ),
                const SizedBox(height: 12),
                ButtonWidget(
                  size: AppButtonSize.lg,
                  state: const AppButtonState.outline(),
                  leftIcon: AppIcons.person,
                  title: 'Outline Button',
                  onTap: () {},
                ),
                const SizedBox(height: 12),
                ButtonWidget(
                  state: const AppButtonState.neutral(),
                  leftIcon: AppIcons.person,
                  title: 'Disabled State',
                  onTap: null, 
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
