import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/routes.dart';

class HomeWidget extends StatefulWidget {
  @override
  //bool isTap = false;
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    bool isTap = false;
    return InkWell(
      onTap: () {
        isTap.toggle();
        Navigator.pushNamed(context, MyRoutes.landingRoute);
        setState(() {});
      },
      child: Icon(Icons.home_rounded, color: context.accentColor),
    ).px16();
  }
}
