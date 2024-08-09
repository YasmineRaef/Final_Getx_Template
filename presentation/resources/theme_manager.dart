import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/get_storage.dart';

class AppTheme {
  static ThemeMode themeMode = currentThemeMode;
  static ThemeData getLightTheme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 190, 152, 255),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromARGB(255, 190, 152, 255),
      ),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 20),
          bodyLarge: TextStyle(fontSize: 24)),
    );
  }

  static ThemeData getDarkTheme() {
    return ThemeData(
      scaffoldBackgroundColor: const Color.fromARGB(255, 127, 125, 125),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.teal,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.teal,
      ),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 20),
          bodyLarge: TextStyle(fontSize: 24)),
    );
  }

  static void changeThemeMode() => Get.changeThemeMode(themeMode =
      (themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light));
}
