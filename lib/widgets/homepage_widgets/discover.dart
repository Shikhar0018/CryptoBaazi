import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    bool isTap = false;
    return InkWell(
      onTap: () {
        isTap.toggle();
        setState(() {});
      },
      child: Icon(CupertinoIcons.compass_fill, color: context.accentColor),
    ).px16();
  }
}
