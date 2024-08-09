import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:getx_template/app/app_localizations.dart';

import '../../data/get_storage.dart';
import '../resources/theme_manager.dart';

class DarkLightButton extends StatefulWidget {
  const DarkLightButton({super.key});
  @override
  State<DarkLightButton> createState() => _DarkLightButtonState();
}

class _DarkLightButtonState extends State<DarkLightButton> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(checkCurrentState(myState) == true
          ? "dark".translateS(context)
          : "light".translateS(context)),
      const Gap(10),
      IconButton(
        icon: Icon(myState),
        onPressed: () {
          setState(() {
            myState = (myState == Icons.dark_mode
                ? Icons.light_mode
                : Icons.dark_mode);
            box.write('isLight', checkCurrentState(myState));
          });
          AppTheme.changeThemeMode();
        },
      )
    ]);
  }
}

bool checkCurrentState(IconData icon) {
  return icon == Icons.dark_mode;
}
