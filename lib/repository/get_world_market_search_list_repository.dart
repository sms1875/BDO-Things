import 'dart:convert';
import 'package:bdo_things/data/get_world_market_search_list.dart';

import 'package:http/http.dart' as http;

class GetWorldMarketSearchListRepository {
  String PROXY_URL = 'https://cors-anywhere.fly.dev/';
  String MARKET_URL = 'https://trade.kr.playblackdesert.com/Trademarket';

  Future<GetWorldMarketSearchList> getWorldMarketSearchLists(String searchResult) async {
    final url = Uri.parse('$PROXY_URL$MARKET_URL/GetWorldMarketSearchList');
    final header = {
      "X-Requested-With": "XMLHttpRequest",
      'Content-Type': 'application/json',
      'User-Agent': 'BlackDesert',
    };
    final body = {'searchResult': searchResult};
    final response = await http.post(url, headers: header, body: json.encode(body));

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body);
      return GetWorldMarketSearchList.fromJson(jsonMap);
    } else {
      throw 'ServerException: ${response.statusCode}';
    }
  }
}


