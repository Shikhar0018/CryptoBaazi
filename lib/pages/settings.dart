import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildListTile(String title, Function userFunction) {
      return ListTile(
        title: title.text.size(13).make(),
        trailing: Icon(Icons.more_horiz_outlined),
      );
    }

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            "CryptoBAZZI".text.bold.size(24).makeCentered(),
            HeightBox(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  CupertinoIcons.airplane,
                  size: 20.0,
                ),
                Icon(
                  CupertinoIcons.f_cursive_circle,
                  size: 20,
                ),
              ],
            ),
            HeightBox(40),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      "App".text.make(),
                    ],
                  ),
                  Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildListTile("Theme Mode", () {}),
                        buildListTile("Launch Screen", () {})
                      ], // Add tiles Within cards
                    ),
                  ), //For Addition of Multiple Cards
                  HeightBox(30),
                  Row(
                    children: [
                      "About".text.make(),
                    ],
                  ),
                  Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      children: [
                        buildListTile("Privacy Policy", () {}),
                        buildListTile("Newsletter", () {}),
                        buildListTile("Terms of Use", () {})
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: MainBar(),
    );
  }
}
