import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/routes.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    bool isTap = false;
    return InkWell(
      splashColor: Colors.amber,
      onTap: () {
        isTap.toggle();
        Navigator.pushNamed(context, MyRoutes.settingsRoute);
        setState(() {});
      },
      child: Icon(CupertinoIcons.settings,
          color: isTap ? Colors.red : context.accentColor),
    );
  }
}
