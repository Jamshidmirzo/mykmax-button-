import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kmax/core/button/button_states.dart';
import 'package:kmax/core/button/button_widget_old.dart';
import 'package:kmax/core/utils/app_icons.dart';

import 'package:kmax/features/onboardings/presentation/providers/onboarding_provider.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ref.read(onboardingProvider.notifier).save(false);
          },
          icon: Icon(Icons.logout_outlined),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          spacing: 10,
          children: [
            //normal
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonWidget(
                  state: AppButtonState.normal,
                  leftIcon: AppIcons.person,
                  rightIcon: AppIcons.arrowRight,
                  title: 'Button',
                  onTap: () {},
                ),
                ButtonWidget(
                  state: AppButtonState.normal,
                  leftIcon: AppIcons.person,
                  title: 'Button',
                  onTap: () {},
                ),

                ButtonWidget(
                  state: AppButtonState.normal,
                  leftIcon: AppIcons.person,
                  onTap: () {},
                ),
              ],
            ),

            ButtonWidget(
              state: AppButtonState.neutral,
              leftIcon: AppIcons.person,
              title: 'Button',
              // autofocus: true,
              onTap: () {},
            ),
            ButtonWidget(
              state: AppButtonState.link,
              leftIcon: AppIcons.person,
              title: 'Button',
              onTap: () {},
            ),
            ButtonWidget(
              state: AppButtonState.error,
              leftIcon: AppIcons.person,
              title: 'Button',
              onTap: () {},
            ),

            // ButtonWidget(
            //   state: AppButtonState.neutral,
            //   leftIcon: AppIcons.person,
            //   title: 'Button',
            //   onTap: () {},
            // ),
            ButtonWidget(
              size: AppButtonSize.lg,
              state: AppButtonState.outline,
              leftIcon: AppIcons.person,
              title: 'Button',
              onTap: () {},
            ),
            ButtonWidget(
              state: AppButtonState.outline,
              leftIcon: AppIcons.person,
              title: 'Disabled',
              onTap: null,
            ),
            // ButtonWidget(
            //   state: AppButtonState.thertiaty,
            //   leftIcon: AppIcons.person,
            //   title: 'Button',
            //   onTap: () {},
            // ),
            // WebButton(),
          ],
        ),
      ),
    );
  }
}

// class WebButton extends StatefulWidget {
//   const WebButton({super.key});

//   @override
//   State<WebButton> createState() => _WebButtonState();
// }

// class _WebButtonState extends State<WebButton> {
//   bool _hovered = false;
//   bool _focused = false;

//   @override
//   Widget build(BuildContext context) {
//     return FocusableActionDetector(
//       onShowHoverHighlight: (value) {
//         setState(() => _hovered = value);
//       },
//       onShowFocusHighlight: (value) {
//         setState(() => _focused = value);
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           border: Border.all(
//             color: _focused
//                 ? Colors.blue
//                 : _hovered
//                 ? Colors.orange
//                 : Colors.transparent,
//             width: 2,
//           ),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: ElevatedButton(
//           onPressed: () {},
//           child: const Text('Hover / Focus'),
//         ),
//       ),
//     );
//   }
// }
