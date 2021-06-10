import 'package:cryptobaazi/pages/landingpage.dart';
import 'package:cryptobaazi/pages/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MainBar extends StatefulWidget {
  const MainBar({Key? key}) : super(key: key);

  @override
  _MainBarState createState() => _MainBarState();
}

class _MainBarState extends State<MainBar> {
  final List<Widget> _pages = [LandingPage(), SettingsPage()];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: context.cardColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        items: [
          // BottomNavigationBarItem(
          //   icon: Icon(CupertinoIcons.compass_fill, color: context.accentColor),
          // ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, color: context.accentColor),
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings, color: context.accentColor),
              title: Text("Settings ")),
          // BottomNavigationBarItem(
          //   icon: Icon(CupertinoIcons.graph_square, color: context.accentColor),
          // )
        ],
      ),
    );
  }
}
