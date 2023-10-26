import 'package:coded_cc_task_riverpod/riverpod/themes_provider.dart';
import 'package:coded_cc_task_riverpod/screens/home_screen.dart';
import 'package:coded_cc_task_riverpod/themes.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  // Wrap the MyApp widget with a ProviderScope widget to make the ThemesProvider instance available to all widgets in the app.
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  // The main app widget that wraps the HomeScreen widget and makes the ThemesProvider instance available to it.
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get the current theme mode from the ThemesProvider.
    final themeModeState = ref.watch(themesProvider);

    // Return a MaterialApp widget with the light theme, dark theme, and theme mode set to the current theme mode.
    return MaterialApp(
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: themeModeState,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
