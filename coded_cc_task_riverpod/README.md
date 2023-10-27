## Getting Started

Description for your Flutter project:

Project Name: Flutter Theming Riverpod Demo

- Description:

This Flutter project is a demo application showcasing dynamic theming using the Riverpod state management library. It allows users to     switch between light and dark themes, providing a seamless and aesthetically pleasing user experience. The project consists of           several components organized in a structured manner:

Riverpod Folder:

The Riverpod folder contains essential components for state management using Riverpod.
themes_provider.dart defines a state provider, themesProvider, responsible for managing the app's theme. It allows users to switch between light and dark themes based on their preference. The app starts with the system theme mode as the default.
ThemesProvider is a StateNotifier class that handles changes to the theme mode. It has a changeTheme method for toggling between light and dark themes.
Screens Folder:

The Screens folder contains the visual components of the app.
home_screen.dart is the main screen of the app. It uses Riverpod to access and display the current theme mode.
The screen features a teal-themed AppBar with a centered title and a toggle switch for theme switching. It displays a Flutter logo, the current theme mode, and a switch to change the theme. Users can switch between light and dark themes, and the UI updates accordingly.
Main.dart:

The main.dart file is the entry point of the application.
It wraps the MyApp widget with a ProviderScope widget, making the ThemesProvider instance accessible to all app widgets.
MyApp Widget:

The MyApp widget is the root widget that wraps the HomeScreen widget.
It utilizes Riverpod to access and apply the current theme mode to the entire app.
The app uses a MaterialApp with customized light and dark themes based on user preferences. The themeMode is set to the currently selected theme mode, and a Flutter logo and theme switch are displayed on the HomeScreen.
Themes.dart:

The Themes class defines the light and dark themes used in the app.
It sets various theme properties such as brightness, scaffoldBackgroundColor, and appBarTheme to create distinct visual styles for the light and dark themes.

How to Use:

Clone or download the project from GitHub.
Ensure you have Flutter and Dart installed on your system.
Open the project in your preferred Flutter IDE.
Run the application on an emulator or physical device.
Use the theme switch on the HomeScreen to toggle between light and dark themes.
This project serves as a useful reference for implementing dynamic theming in Flutter applications using Riverpod for state management. Users can easily adapt and integrate this functionality into their own projects.
