import 'dart:convert';
import 'package:bdo_things/data/get_world_market_search_list.dart';

import 'package:http/http.dart' as http;

class GetWorldMarketSearchListRepository {
  Future<GetWorldMarketSearchList> getWorldMarketSearchLists(String searchResult) async {
    final url = Uri.parse('http://localhost:3000/GetWorldMarketSearchList');

    final body = {'searchResult': searchResult};

    final response = await http.post(url, body: json.encode(body));

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body);
      return GetWorldMarketSearchList.fromJson(jsonMap);
    } else {
      throw 'ServerException: ${response.statusCode}';
    }
  }
}


