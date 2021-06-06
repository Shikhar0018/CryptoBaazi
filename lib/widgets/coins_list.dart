import 'package:cryptobaazi/models/coins.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CoinsList extends StatelessWidget {
  const CoinsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: CoinsModel.coin.length,
      itemBuilder: (context, index) {
        final catalog = CoinsModel.coin[index];
        return InkWell(
          child: CoinItem(
            catalog: catalog,
          ),
        );
      },
    );
  }
}

class CoinItem extends StatelessWidget {
  final Coins catalog;
  const CoinItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.symbol.text.bold.make(),
          ],
        ))
      ],
    ));
  }
}
