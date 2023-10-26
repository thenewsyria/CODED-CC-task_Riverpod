import 'package:coded_cc_task_riverpod/riverpod/themes_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  // This widget displays a toggle button that allows the user to switch between the light and dark theme.
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get the current theme mode from the ThemesProvider.
    final themeModeState = ref.watch(themesProvider);

    // Return a Scaffold widget with a teal AppBar and a centered column containing a Flutter logo, a text widget that displays the current theme mode, and a Switch widget that allows the user to change the theme mode.
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Theming Riverpod Demo",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              height: 200,
              width: 300,
            ),
            Text(
              "Change Theme $themeModeState",
              style: const TextStyle(fontSize: 18),
            ),
            Consumer(
              builder: (context, ref, child) {
                // Get the ThemesProvider notifier.
                final themesProviderNotifier =
                    ref.read(themesProvider.notifier);

                // Return a Switch widget that allows the user to change the theme mode.
                return Switch(
                  value: themeModeState == ThemeMode.dark, //false or true
                  onChanged: (value) {
                    // Change the theme mode to the value of the Switch widget.
                    themesProviderNotifier.changeTheme(value);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
