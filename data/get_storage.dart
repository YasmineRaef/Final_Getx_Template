import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

final box = GetStorage();
late Locale myLocale;
late IconData myState;
late ThemeMode currentThemeMode;
late bool isEnglish;
late bool isLight;

void retrieveData() {
  box.read('isEnglish') == false
      ? myLocale = const Locale('ar')
      : myLocale = const Locale('en');
  if (box.read('isLight') == false) {
    myState = Icons.light_mode;
    currentThemeMode = ThemeMode.dark;
  } else {
    myState = Icons.dark_mode;
    currentThemeMode = ThemeMode.light;
  }
}
