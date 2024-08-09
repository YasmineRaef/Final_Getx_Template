import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';

import 'app/app.dart';
import 'data/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  retrieveData();
  runApp(const App());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}
