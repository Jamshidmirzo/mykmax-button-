// // ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:gap/gap.dart';

// import 'package:kmax/core/button/button_extensions.dart';
// import 'package:kmax/core/button/button_states.dart';
// import 'package:kmax/core/button/button_theme.dart';
// import 'package:kmax/core/button/button_theme_data.dart';
// import 'package:kmax/core/model/style_model.dart';

// class ButtonWidget extends StatefulWidget {
//   const ButtonWidget({
//     super.key,
//     this.size,
//     this.leftIcon,
//     this.rightIcon,
//     this.title,
//     this.state,
//     this.onTap,
//     this.autofocus = false,
//   });

//   final AppButtonSize? size;
//   final String? leftIcon;
//   final String? rightIcon;
//   final String? title;
//   final AppButtonState? state;
//   final VoidCallback? onTap;
//   final bool autofocus;
//   @override
//   State<ButtonWidget> createState() => _ButtonWidgetState();
// }

// class _ButtonWidgetState extends State<ButtonWidget> {
//   @override
//   Widget build(BuildContext context) {
//     CustomButtonThemeData effectiveTheme = CustomButtonTheme.of(context);
//     AppButtonSize effectiveSize = widget.size ?? effectiveTheme.size;

//     bool isIconOnly =
//         widget.title == null &&
//         ((widget.leftIcon != null && widget.rightIcon == null) ||
//             (widget.leftIcon == null && widget.rightIcon != null));

//     double height = effectiveSize.height;
//     double? width = isIconOnly ? height : null;

//     AppButtonState currentState = widget.state ?? effectiveTheme.state;

//     StyleModel styleModel = currentState.style(context);
//     double iconSize = effectiveSize.iconSize;
//     double fontSize = effectiveSize.fontSize;

//     return TextButton(
//       autofocus: widget.autofocus,
//       onPressed: widget.onTap,
//       style: ButtonStyle(
//         padding: WidgetStateProperty.all(EdgeInsets.zero),
//         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//         overlayColor: WidgetStateProperty.all(Colors.transparent),
//         splashFactory: NoSplash.splashFactory,
//         foregroundColor: WidgetStateProperty.resolveWith((states) {
//           if (states.contains(WidgetState.disabled)) {
//             return currentState.disabledStyle(context).contentColor;
//           }
//           if (states.contains(WidgetState.hovered)) {
//             return currentState.hoverStyle(context).contentColor;
//           }
//           if (states.contains(WidgetState.focused)) {
//             return currentState.focusedStyle(context).contentColor;
//           }
//           return currentState.style(context).contentColor;
//         }),
//         backgroundColor: WidgetStateProperty.resolveWith((states) {
//           log(states.toString());
//           if (states.contains(WidgetState.disabled)) {
//             return currentState.disabledBg(context);
//           }
//           if (states.contains(WidgetState.pressed)) {
//             return currentState.pressedBg(context);
//           }
//           if (states.contains(WidgetState.hovered)) {
//             return currentState.hoverBg(context);
//           }
//           if (states.contains(WidgetState.focused)) {
//             return currentState.focusedBg(context);
//           }

//           return currentState.bg(context);
//         }),
//         elevation: WidgetStateProperty.resolveWith((states) {
//           return 0;
//         }),
//         shape: WidgetStateProperty.resolveWith((states) {
//           final shape = currentState.shape(context);

//           BorderSide side;

//           if (states.contains(WidgetState.disabled)) {
//             side = currentState.disabledSide(context);
//           } else if (states.contains(WidgetState.focused)) {
//             side = currentState.focusedSide(context);
//           } else if (states.contains(WidgetState.hovered)) {
//             side = currentState.hoverSide(context);
//           } else {
//             side = currentState.side(context);
//           }

//           return shape.copyWith(side: side);
//         }),
//       ),
//       child: Builder(
//         builder: (context) {
//           final iconColor =
//               IconTheme.of(context).color ?? styleModel.contentColor;

//           return Container(
//             height: height,
//             width: width,
//             padding: isIconOnly
//                 ? EdgeInsets.zero
//                 : EdgeInsets.symmetric(
//                     horizontal: effectiveSize.padding,
//                   ),
//             alignment: isIconOnly ? Alignment.center : null,
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 if (widget.leftIcon != null) ...[
//                   SizedBox(
//                     width: iconSize,
//                     height: iconSize,
//                     child: SvgPicture.asset(
//                       widget.leftIcon!,

//                       colorFilter: ColorFilter.mode(
//                         iconColor,
//                         BlendMode.srcIn,
//                       ),
//                     ),
//                   ),
//                   if (widget.title != null || widget.rightIcon != null) Gap(12),
//                 ],
//                 if (widget.title != null) ...[
//                   Text(
//                     widget.title!,
//                     style: TextStyle(
//                       fontSize: fontSize,
//                     ),
//                   ),
//                   if (widget.rightIcon != null) Gap(12),
//                 ],
//                 if (widget.rightIcon != null)
//                   SizedBox(
//                     width: iconSize,
//                     height: iconSize,
//                     child: SvgPicture.asset(
//                       widget.rightIcon!,

//                       colorFilter: ColorFilter.mode(
//                         iconColor,
//                         BlendMode.srcIn,
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
