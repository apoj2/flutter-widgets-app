import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final themeModeProvider = StateProvider((ref) => true);
//para crear un provider inmutable
final colorListProvider = Provider((ref) => colorList);
//para mantener alguna pieza de estado
final selectedColorProvider = StateProvider((ref) => 0);
//para crear un objeto de estados
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  //satte = Estado = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(themeMode: !state.themeMode);
  }

  void changeSelectedColor(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
