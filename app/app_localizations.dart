import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../data/get_storage.dart';

class AppLocalizations {
  final Locale? locale;
  AppLocalizations({this.locale});
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  late Map<String, String> _localizedStrings;
  Future loadJsonLanguage() async {
    String jsonString =
        await rootBundle.loadString("assets/lang/${locale!.languageCode}.json");

    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  String translate(String key) => _localizedStrings[key] ?? "";
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = AppLocalizations(locale: locale);
    await localizations.loadJsonLanguage();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) =>
      false;
}

Iterable<LocalizationsDelegate<dynamic>> LocalizationDelegates = const [
  AppLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate
];

Locale? localResolutionCallback(deviceLocale, supportedLocales) {
  for (var locale in supportedLocales) {
    if (deviceLocale != null &&
        deviceLocale.languageCode == locale.languageCode) {
      return deviceLocale;
    }
  }
  return supportedLocales.first;
}

extension TranslateString on String {
  String translateS(BuildContext context) {
    return AppLocalizations.of(context)!.translate(this);
  }
}

bool checkCurrentLocale() {
  return myLocale == const Locale('en');
}

void changeLocal(Locale myLocale) => Get.updateLocale(myLocale);
