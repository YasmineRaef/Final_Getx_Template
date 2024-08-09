import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:getx_template/app/app_localizations.dart';

import '../../data/get_storage.dart';

class LanguageButton extends StatefulWidget {
  const LanguageButton({super.key});

  @override
  State<LanguageButton> createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("language".translateS(context)),
      const Gap(10),
      IconButton(
          onPressed: () {
            setState(() {
              if (checkCurrentLocale() == true) {
                myLocale = const Locale('ar');
                isEnglish = false;
              } else {
                myLocale = const Locale('en');
                isEnglish = true;
              }
              changeLocal(myLocale);
              box.write('isEnglish', isEnglish);
            });
          },
          icon: const Icon(Icons.language))
    ]);
  }
}
