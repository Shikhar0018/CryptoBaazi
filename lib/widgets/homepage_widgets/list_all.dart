import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    bool isTap = false;
    return InkWell(
      onTap: () {
        isTap.toggle();
        setState(() {});
      },
      child: Icon(CupertinoIcons.graph_square,
          color: isTap ? Colors.red : context.accentColor),
    );
  }
}
