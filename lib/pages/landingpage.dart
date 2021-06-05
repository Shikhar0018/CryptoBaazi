import 'dart:convert';

import 'package:cryptobaazi/models/coins.dart';
import 'package:cryptobaazi/widgets/coins_list.dart';
import 'package:cryptobaazi/widgets/mainBar.dart';
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
    CoinsModel.coin =
        List.from(coinsData).map<Coins>((coin) => Coins.fromMap(coin)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MainBar(),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (CoinsModel.coin.isNotEmpty)
                CoinsList().expand()
              else
                CircularProgressIndicator().centered().expand()
            ],
          ),
        ),
      ),
    );
  }
}
