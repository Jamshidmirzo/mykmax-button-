import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';
import 'package:kmax/features/onboardings/data/datasoruces/local_datasources.dart';
import 'package:kmax/service_locator.dart';

class OnboardingState {
  final bool isShowed;
  final int selectedLanguageIndex;
  final LiquidGlassSettings liquidGlassSettings;
  final String dynamicText;

  OnboardingState({
    required this.isShowed,
    this.selectedLanguageIndex = 0,
    required this.liquidGlassSettings,
    this.dynamicText = 'Default Text',
  });

  OnboardingState copyWith({
    bool? isShowed,
    int? selectedLanguageIndex,
    LiquidGlassSettings? liquidGlassSettings,
    String? dynamicText,
  }) {
    return OnboardingState(
      isShowed: isShowed ?? this.isShowed,
      selectedLanguageIndex:
          selectedLanguageIndex ?? this.selectedLanguageIndex,
      liquidGlassSettings: liquidGlassSettings ?? this.liquidGlassSettings,
      dynamicText: dynamicText ?? this.dynamicText,
    );
  }
}

class OnboardingNotifier extends Notifier<OnboardingState> {
  LocalDatasources localDatasources;
  OnboardingNotifier({required this.localDatasources});

  Future<void> load() async {
    final isShowed = await localDatasources.check();
    state = state.copyWith(isShowed: isShowed);
  }

  Future<void> save(bool isShowed) async {
    await localDatasources.isShowSave(isShowed);
    state = state.copyWith(isShowed: isShowed);
  }

  void setLanguage(int index) {
    state = state.copyWith(selectedLanguageIndex: index);
  }

  void updateLiquidGlassSettings(LiquidGlassSettings settings) {
    state = state.copyWith(liquidGlassSettings: settings);
  }

  void updateDynamicText(String text) {
    state = state.copyWith(dynamicText: text);
  }

  @override
  OnboardingState build() {
    return OnboardingState(
      isShowed: false,
      liquidGlassSettings: LiquidGlassSettings(
        thickness: 70,
        glassColor: Colors.transparent,
      ),
    );
  }
}

final onboardingProvider =
    NotifierProvider<OnboardingNotifier, OnboardingState>(() {
  return OnboardingNotifier(localDatasources: getIt<LocalDatasources>());
});
