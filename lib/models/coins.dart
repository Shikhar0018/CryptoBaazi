import 'dart:convert';

class Coins {
  final int id;
  final String symbol;
  final String name;
  final String nameid;
  final int rank;
  final double price_usd;
  final double percent_change_24h;
  final double percent_change_1h;
  final double percent_change_7d;
  final double price_btc;
  final double market_cap_usd;
  final double volume24;
  final double volume24a;
  final double csupply;
  final double tsupply;
  final double msupply;

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
    required this.csupply,
    required this.tsupply,
    required this.msupply,
  });

  Coins copyWith({
    int? id,
    String? symbol,
    String? name,
    String? nameid,
    int? rank,
    double? price_usd,
    double? percent_change_24h,
    double? percent_change_1h,
    double? percent_change_7d,
    double? price_btc,
    double? market_cap_usd,
    double? volume24,
    double? volume24a,
    double? csupply,
    double? tsupply,
    double? msupply,
  }) {
    return Coins(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      nameid: nameid ?? this.nameid,
      rank: rank ?? this.rank,
      price_usd: price_usd ?? this.price_usd,
      percent_change_24h: percent_change_24h ?? this.percent_change_24h,
      percent_change_1h: percent_change_1h ?? this.percent_change_1h,
      percent_change_7d: percent_change_7d ?? this.percent_change_7d,
      price_btc: price_btc ?? this.price_btc,
      market_cap_usd: market_cap_usd ?? this.market_cap_usd,
      volume24: volume24 ?? this.volume24,
      volume24a: volume24a ?? this.volume24a,
      csupply: csupply ?? this.csupply,
      tsupply: tsupply ?? this.tsupply,
      msupply: msupply ?? this.msupply,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'symbol': symbol,
      'name': name,
      'nameid': nameid,
      'rank': rank,
      'price_usd': price_usd,
      'percent_change_24h': percent_change_24h,
      'percent_change_1h': percent_change_1h,
      'percent_change_7d': percent_change_7d,
      'price_btc': price_btc,
      'market_cap_usd': market_cap_usd,
      'volume24': volume24,
      'volume24a': volume24a,
      'csupply': csupply,
      'tsupply': tsupply,
      'msupply': msupply,
    };
  }

  factory Coins.fromMap(Map<String, dynamic> map) {
    return Coins(
      id: map['id'],
      symbol: map['symbol'],
      name: map['name'],
      nameid: map['nameid'],
      rank: map['rank'],
      price_usd: map['price_usd'],
      percent_change_24h: map['percent_change_24h'],
      percent_change_1h: map['percent_change_1h'],
      percent_change_7d: map['percent_change_7d'],
      price_btc: map['price_btc'],
      market_cap_usd: map['market_cap_usd'],
      volume24: map['volume24'],
      volume24a: map['volume24a'],
      csupply: map['csupply'],
      tsupply: map['tsupply'],
      msupply: map['msupply'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Coins.fromJson(String source) => Coins.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Coins(id: $id, symbol: $symbol, name: $name, nameid: $nameid, rank: $rank, price_usd: $price_usd, percent_change_24h: $percent_change_24h, percent_change_1h: $percent_change_1h, percent_change_7d: $percent_change_7d, price_btc: $price_btc, market_cap_usd: $market_cap_usd, volume24: $volume24, volume24a: $volume24a, csupply: $csupply, tsupply: $tsupply, msupply: $msupply)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Coins &&
        other.id == id &&
        other.symbol == symbol &&
        other.name == name &&
        other.nameid == nameid &&
        other.rank == rank &&
        other.price_usd == price_usd &&
        other.percent_change_24h == percent_change_24h &&
        other.percent_change_1h == percent_change_1h &&
        other.percent_change_7d == percent_change_7d &&
        other.price_btc == price_btc &&
        other.market_cap_usd == market_cap_usd &&
        other.volume24 == volume24 &&
        other.volume24a == volume24a &&
        other.csupply == csupply &&
        other.tsupply == tsupply &&
        other.msupply == msupply;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        symbol.hashCode ^
        name.hashCode ^
        nameid.hashCode ^
        rank.hashCode ^
        price_usd.hashCode ^
        percent_change_24h.hashCode ^
        percent_change_1h.hashCode ^
        percent_change_7d.hashCode ^
        price_btc.hashCode ^
        market_cap_usd.hashCode ^
        volume24.hashCode ^
        volume24a.hashCode ^
        csupply.hashCode ^
        tsupply.hashCode ^
        msupply.hashCode;
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
