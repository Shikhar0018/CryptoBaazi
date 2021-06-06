//import 'dart:convert';

class CoinsModel {
  static List<Coins> coin = [];

  Coins getByRank(int rank) =>
      coin.firstWhere((element) => element.rank == rank, orElse: null);
}

class Coins {
  final String id;
  final String symbol;
  final String name;
  final String nameid;
  final int rank;
  final String price_usd;
  final String percent_change_24h;
  final String percent_change_1h;
  final String percent_change_7d;
  final String price_btc;
  final String market_cap_usd;
  final num volume24;
  final num volume24a;
  //final String csupply;
  //final String tsupply;
  //final String msupply;

  Coins({
    required this.id,
    required this.symbol,
    required this.name,
    required this.nameid,
    required this.rank,
    required this.price_usd,
    required this.percent_change_24h,
    required this.percent_change_1h,
    required this.percent_change_7d,
    required this.price_btc,
    required this.market_cap_usd,
    required this.volume24,
    required this.volume24a,
    //required this.csupply,
    //required this.tsupply,
    //required this.msupply,
  });

  factory Coins.fromMap(Map<String, dynamic> json) {
    return Coins(
        id: json['id'],
        symbol: json['symbol'],
        name: json['name'],
        nameid: json['nameid'],
        rank: json['rank'],
        price_usd: json['price_usd'],
        percent_change_24h: json['percent_change_24h'],
        percent_change_1h: json['percent_change_1h'],
        percent_change_7d: json['percent_change_7d'],
        price_btc: json['price_btc'],
        market_cap_usd: json['market_cap_usd'],
        volume24: json['volume24'],
        volume24a: json['volume24a']
        //csupply: json['csupply'],
        //tsupply: json['tsupply'],
        //msupply: json['msupply']
        );
  }
}
// { Dummy Result data from api
//   "data": [
//     {
//       "id": "90",
//       "symbol": "BTC",
//       "name": "Bitcoin",
//       "nameid": "bitcoin",
//       "rank": 1,
//       "price_usd": "6456.52",
//       "percent_change_24h": "-1.47",
//       "percent_change_1h": "0.05",
//       "percent_change_7d": "-1.07",
//       "price_btc": "1.00",
//       "market_cap_usd": "111586042785.56",
//       "volume24": 3997655362.9586277,
//       "volume24a": 3657294860.710187,
//       "csupply": "17282687.00",
//       "tsupply": "17282687",
//       "msupply": "21000000"
//     },
//   "info": {
//     "coins_num": 1969,
//     "time": 1538560355
//   }
// }
