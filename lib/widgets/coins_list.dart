import 'package:cryptobaazi/models/coins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CoinsList extends StatelessWidget {
  const CoinsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 3 / 2),
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
    return Scaffold(
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: ListTile(
          onTap: () => {},
          title: catalog.name.text.bold
              .size(12)
              .color(context.theme.buttonColor)
              .make(),
          subtitle: catalog.symbol.text.size(8).make(),
          trailing: "\$${catalog.price_usd}".text.size(10).bold.make(),
        ),
      ).p16(),
    );
  }
}
