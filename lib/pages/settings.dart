import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/homepage_widgets/mainBar.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTile(
                      title: "Theme Mode".text.size(13).make(),
                      trailing: Icon(Icons.more_horiz_outlined),
                      onTap: () {
                        setState(() {});
                      },
                    ),
                    ListTile(
                      title: "Account Settings".text.size(13).make(),
                      trailing: Icon(Icons.more_horiz_outlined),
                    ),
                  ], // Add tiles Within cards
                ),
              ), //For Addition of Multiple Cards
            ],
          ),
        ),
        bottomNavigationBar: MainBar(),
      ),
    );
  }
}
