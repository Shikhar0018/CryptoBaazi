import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:cryptobaazi/models/coins.dart';

class Coin_Detail extends StatefulWidget {
  final Coins catalog;
  const Coin_Detail({Key? key, required this.catalog}) : super(key: key);

  @override
  _Coin_DetailState createState() => _Coin_DetailState();
}

class _Coin_DetailState extends State<Coin_Detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: widget.catalog.name.text.makeCentered(),
          actions: [FavoriteButton()],
        ),
        body: Container(
          child: Column(
            children: [
              Placeholder(
                fallbackHeight: 300,
              ).py8(),
              HeightBox(30),
              "\ ID :  ${widget.catalog.nameid}".text.make(),
              "\ Market Cap :  ${widget.catalog.market_cap_usd}".text.make(),
              "\ Percent Change 1H :  ${widget.catalog.percent_change_1h}"
                  .text
                  .make(),
              "\ Percent Change 24H :  ${widget.catalog.percent_change_24h}"
                  .text
                  .make(),
              "\ Percent Change 7D :  ${widget.catalog.percent_change_7d}"
                  .text
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  //final Coins catalog;
  const FavoriteButton({
    Key? key,
    //required this.catalog,
  }) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          isAdded = isAdded.toggle();
          //final _coin = CoinsModel();
          //final _favorite = FavoritesModel();
          // _favorite.add(_coin);
          setState(() {});
        },
        icon: isAdded
            ? Icon(
                Icons.favorite,
                color: Colors.red,
              )
            : Icon(Icons.favorite_border));
  }
}
