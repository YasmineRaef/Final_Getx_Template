import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../data/get_storage.dart';
import '../presentation/resources/routes_and_navigators.dart';
import '../presentation/resources/theme_manager.dart';
import 'app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: myLocale,
      supportedLocales: const [Locale('en'), Locale('ar')],
      localizationsDelegates: LocalizationDelegates,
      localeResolutionCallback: localResolutionCallback,
      //
      initialRoute: NamedRoutes.splash,
      getPages: GeneratedRoutes.getRoute(),
      theme: AppTheme.getLightTheme(),
      //
      darkTheme: AppTheme.getDarkTheme(),
      themeMode: AppTheme.themeMode,
    );
  }
}
