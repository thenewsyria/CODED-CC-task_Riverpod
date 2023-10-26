import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// A state provider for managing the app's theme.
final themesProvider = StateNotifierProvider<ThemesProvider, ThemeMode?>((_) {
  // Return a new ThemesProvider instance.
  return ThemesProvider();
});

class ThemesProvider extends StateNotifier<ThemeMode?> {
  // Initialize the state with the system theme mode.
  ThemesProvider() : super(ThemeMode.system);

  // Changes the app's theme mode.
  void changeTheme(bool isOn) {
    // Set the state to the new theme mode.
    state = isOn ? ThemeMode.dark : ThemeMode.light;
  }
}
