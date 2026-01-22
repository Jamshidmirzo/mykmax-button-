
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kmax/core/model/style_model.dart';
import 'package:kmax/core/extension/extension.dart';
enum AppButtonSize { xl, lg, md, sm, xs }

enum AppButtonState {
  normal,
  neutral,
  link,
  thertiaty,
  error,
  outline,
}


// sealed class AppButtonState {
//   const AppButtonState();

//   const factory AppButtonState.normal() = _Normal;
//   const factory AppButtonState.neutral() = _Neutral;
//   const factory AppButtonState.error() = _Error;
//   const factory AppButtonState.link() = _Link;
//   const factory AppButtonState.tertiary() = _Tertiary;
//   const factory AppButtonState.outline() = _Outline;

//   // ----------------- COLORS -----------------
//   Color bg(BuildContext context);
//   Color hoverBg(BuildContext context);
//   Color focusedBg(BuildContext context);
//   Color disabledBg(BuildContext context);

//   // ----------------- STYLE -----------------
//   StyleModel style(BuildContext context);
//   StyleModel hoverStyle(BuildContext context);
//   StyleModel focusedStyle(BuildContext context);
//   StyleModel disabledStyle(BuildContext context);

//   // ----------------- BORDER -----------------
//   BorderSide side(BuildContext context);
//   BorderSide hoverSide(BuildContext context);
//   BorderSide focusedSide(BuildContext context);
//   BorderSide disabledSide(BuildContext context);

//   // ----------------- SHAPE -----------------
//   OutlinedBorder shape(BuildContext context);
// }

// // ==================================================
// // ================= NORMAL =========================
// // ==================================================
// class _Normal extends AppButtonState {
//   const _Normal();

//   @override
//   Color bg(BuildContext context) => context.color.brand;

//   @override
//   Color hoverBg(BuildContext context) => const Color(0xFFAD82FC);

//   @override
//   Color focusedBg(BuildContext context) => const Color(0xFF8444FB);

//   @override
//   Color disabledBg(BuildContext context) => context.color.neutral.shade200;

//   @override
//   StyleModel style(BuildContext context) =>
//       StyleModel(contentColor: context.color.neutral.shade50);

//   @override
//   StyleModel hoverStyle(BuildContext context) => style(context);

//   @override
//   StyleModel focusedStyle(BuildContext context) => style(context);

//   @override
//   StyleModel disabledStyle(BuildContext context) =>
//       StyleModel(contentColor: context.color.neutral.shade300);

//   @override
//   BorderSide side(BuildContext context) =>
//       BorderSide(color: context.color.neutral.shade600);

//   @override
//   BorderSide hoverSide(BuildContext context) => side(context);

//   @override
//   BorderSide focusedSide(BuildContext context) => side(context);

//   @override
//   BorderSide disabledSide(BuildContext context) => side(context);

//   @override
//   OutlinedBorder shape(BuildContext context) =>
//       RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r));
// }

// // ==================================================
// // ================= NEUTRAL ========================
// // ==================================================
// class _Neutral extends AppButtonState {
//   const _Neutral();

//   @override
//   Color bg(BuildContext context) => context.color.neutral.shade50;

//   @override
//   Color hoverBg(BuildContext context) => context.color.brand.shade100;

//   @override
//   Color focusedBg(BuildContext context) => context.color.neutral.shade50;

//   @override
//   Color disabledBg(BuildContext context) => context.color.neutral.shade200;

//   @override
//   StyleModel style(BuildContext context) =>
//       StyleModel(contentColor: context.color.neutral.shade800);

//   @override
//   StyleModel hoverStyle(BuildContext context) => style(context);

//   @override
//   StyleModel focusedStyle(BuildContext context) => style(context);

//   @override
//   StyleModel disabledStyle(BuildContext context) =>
//       StyleModel(contentColor: context.color.neutral.shade300);

//   @override
//   BorderSide side(BuildContext context) =>
//       BorderSide(color: context.color.neutral.shade600);

//   @override
//   BorderSide hoverSide(BuildContext context) => side(context);

//   @override
//   BorderSide focusedSide(BuildContext context) => side(context);

//   @override
//   BorderSide disabledSide(BuildContext context) => side(context);

//   @override
//   OutlinedBorder shape(BuildContext context) =>
//       RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r));
// }

// // ==================================================
// // ================= ERROR ==========================
// // ==================================================
// class _Error extends AppButtonState {
//   const _Error();

//   @override
//   Color bg(BuildContext context) => context.color.error;

//   @override
//   Color hoverBg(BuildContext context) => context.color.error.shade700;

//   @override
//   Color focusedBg(BuildContext context) => context.color.error.shade700;

//   @override
//   Color disabledBg(BuildContext context) => context.color.neutral.shade400;

//   @override
//   StyleModel style(BuildContext context) =>
//       StyleModel(contentColor: context.color.neutral.shade50);

//   @override
//   StyleModel hoverStyle(BuildContext context) => style(context);

//   @override
//   StyleModel focusedStyle(BuildContext context) => style(context);

//   @override
//   StyleModel disabledStyle(BuildContext context) =>
//       StyleModel(contentColor: context.color.neutral.shade300);

//   @override
//   BorderSide side(BuildContext context) =>
//       BorderSide(color: context.color.neutral.shade200, width: 1);

//   @override
//   BorderSide hoverSide(BuildContext context) => side(context);

//   @override
//   BorderSide focusedSide(BuildContext context) => side(context);

//   @override
//   BorderSide disabledSide(BuildContext context) => side(context);

//   @override
//   OutlinedBorder shape(BuildContext context) =>
//       RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r));
// }

// // ==================================================
// // ================= LINK ===========================
// // ==================================================
// class _Link extends AppButtonState {
//   const _Link();

//   @override
//   Color bg(BuildContext context) => Colors.transparent;

//   @override
//   Color hoverBg(BuildContext context) => Colors.transparent;

//   @override
//   Color focusedBg(BuildContext context) => Colors.transparent;

//   @override
//   Color disabledBg(BuildContext context) => Colors.transparent;

//   @override
//   StyleModel style(BuildContext context) =>
//       StyleModel(contentColor: context.color.brand);

//   @override
//   StyleModel hoverStyle(BuildContext context) =>
//       StyleModel(contentColor: context.color.brand.shade700);

//   @override
//   StyleModel focusedStyle(BuildContext context) =>
//       StyleModel(contentColor: context.color.brand.shade700);

//   @override
//   StyleModel disabledStyle(BuildContext context) =>
//       StyleModel(contentColor: context.color.neutral.shade200);

//   @override
//   BorderSide side(BuildContext context) =>
//       const BorderSide(color: Colors.transparent, width: 1);

//   @override
//   BorderSide hoverSide(BuildContext context) =>
//       BorderSide(color: context.color.brand.shade700, width: 1);

//   @override
//   BorderSide focusedSide(BuildContext context) =>
//       BorderSide(color: context.color.brand, width: 1);

//   @override
//   BorderSide disabledSide(BuildContext context) =>
//       BorderSide(color: context.color.neutral.shade300, width: 1);

//   @override
//   OutlinedBorder shape(BuildContext context) => LinearBorder.bottom();
// }

// // ==================================================
// // ================= TERTIARY ========================
// // ==================================================
// class _Tertiary extends AppButtonState {
//   const _Tertiary();

//   @override
//   Color bg(BuildContext context) => Colors.transparent;

//   @override
//   Color hoverBg(BuildContext context) => Colors.transparent;

//   @override
//   Color focusedBg(BuildContext context) => Colors.transparent;

//   @override
//   Color disabledBg(BuildContext context) => Colors.transparent;

//   @override
//   StyleModel style(BuildContext context) =>
//       StyleModel(contentColor: context.color.neutral.shade50);

//   @override
//   StyleModel hoverStyle(BuildContext context) => style(context);

//   @override
//   StyleModel focusedStyle(BuildContext context) => style(context);

//   @override
//   StyleModel disabledStyle(BuildContext context) =>
//       StyleModel(contentColor: context.color.neutral.shade200);

//   @override
//   BorderSide side(BuildContext context) =>
//       BorderSide(color: context.color.neutral.shade200, width: 1);

//   @override
//   BorderSide hoverSide(BuildContext context) => side(context);

//   @override
//   BorderSide focusedSide(BuildContext context) => side(context);

//   @override
//   BorderSide disabledSide(BuildContext context) => side(context);

//   @override
//   OutlinedBorder shape(BuildContext context) =>
//       RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r));
// }

// // ==================================================
// // ================= OUTLINE ========================
// // ==================================================
// class _Outline extends AppButtonState {
//   const _Outline();

//   @override
//   Color bg(BuildContext context) => Colors.transparent;

//   @override
//   Color hoverBg(BuildContext context) => Colors.transparent;

//   @override
//   Color focusedBg(BuildContext context) => Colors.transparent;

//   @override
//   Color disabledBg(BuildContext context) => Colors.transparent;

//   @override
//   StyleModel style(BuildContext context) =>
//       StyleModel(contentColor: context.color.error);

//   @override
//   StyleModel hoverStyle(BuildContext context) =>
//       StyleModel(contentColor: context.color.error);

//   @override
//   StyleModel focusedStyle(BuildContext context) =>
//       StyleModel(contentColor: context.color.error);

//   @override
//   StyleModel disabledStyle(BuildContext context) =>
//       StyleModel(contentColor: context.color.neutral.shade200);

//   @override
//   BorderSide side(BuildContext context) =>
//       BorderSide(color: context.color.error.shade500, width: 2);

//   @override
//   BorderSide hoverSide(BuildContext context) =>
//       BorderSide(color: context.color.error.shade700, width: 2);

//   @override
//   BorderSide focusedSide(BuildContext context) =>
//       BorderSide(color: context.color.error.shade700, width: 4);

//   @override
//   BorderSide disabledSide(BuildContext context) =>
//       BorderSide(color: context.color.neutral.shade300, width: 2);

//   @override
//   OutlinedBorder shape(BuildContext context) =>
//       RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r));
// }

