import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:getx_template/app/app_localizations.dart';

import 'customs/dark_light_button.dart';
import 'customs/language_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("title".translateS(context))),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("adding".translateS(context)),
              const Gap(20),
              Text('$_counter', style: Theme.of(context).textTheme.bodyLarge),
              const Gap(20),
              const DarkLightButton(),
              const Gap(20),
              const LanguageButton()
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add)));
  }
}
