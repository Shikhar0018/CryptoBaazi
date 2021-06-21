import 'dart:convert';
import 'package:cryptobaazi/models/coins.dart';
import 'package:cryptobaazi/widgets/coins_list.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final url = "https://api.coinlore.net/api/tickers/";

  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final response = await http.get(Uri.parse(url));
    final coinsJson = response.body;

    final decodedData = jsonDecode(coinsJson);
    var coinsData = decodedData["data"];
    try {
      CoinsModel.coin =
          List.from(coinsData).map<Coin>((coin) => Coin.fromMap(coin)).toList();
      setState(() {});
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //bottomNavigationBar: MainBar(),

      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              title: "CryptoBAZZI".text.bold.makeCentered(),
              //titleTextStyle: TextStyle(),
              actions: [
                IconButton(onPressed: () => {}, icon: Icon(Icons.search))
              ],
              actionsIconTheme: IconThemeData(
                color: context.accentColor,
              ),
              elevation: 4.0,
              backgroundColor: context.cardColor,
            ),
            if (CoinsModel.coin.isNotEmpty)
              CoinsList().expand()
            else
              CircularProgressIndicator().centered().expand()
          ],
        ),
      ),
    );
  }
}
