import 'package:flutter/material.dart';

class Themes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light, // For light theming
    scaffoldBackgroundColor: Colors.grey.shade100,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey.shade100,
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 12),
        centerTitle: false),
// you can add more
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark, // For dark theming
    scaffoldBackgroundColor: Colors.grey.shade900,
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0x00049fb6),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
        centerTitle: false),
// you can add more
  );
}
