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
  const CoinItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        //color: context.cardColor,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: context.cardColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: catalog.name.text.bold
                  .color(context.theme.buttonColor)
                  .make(),
              subtitle: catalog.symbol.text.make(),
              trailing: "\$${catalog.price_usd}".text.bold.make(),
            )
          ],
        ),
      ).p16(),
    );
  }
}
