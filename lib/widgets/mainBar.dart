import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'homepage_widgets/home.dart';
import 'homepage_widgets/discover.dart';
import 'homepage_widgets/list_all.dart';
import 'homepage_widgets/settings.dart';

class MainBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: context.cardColor,
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceAround,
        buttonPadding: EdgeInsets.all(12),
        children: [
          HomeWidget(),
          Portfolio(),
          Discover(),
          Settings(),
        ],
      ),
    );
  }
}
