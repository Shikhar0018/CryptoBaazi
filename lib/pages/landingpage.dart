import 'package:cryptobaazi/widgets/mainBar.dart';
import 'package:flutter/material.dart';
//import 'package:velocity_x/velocity_x.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: MainBar(),
      ),
    );
  }
}
