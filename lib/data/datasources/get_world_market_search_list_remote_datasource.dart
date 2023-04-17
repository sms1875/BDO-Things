import 'dart:convert';

import 'package:bdo_things/data/exceptions/server_exception.dart';
import 'package:bdo_things/domain/entities/get_world_market_search_list.dart';

import 'package:http/http.dart' as http;

abstract class GetWorldMarketSearchListRemoteDataSource {
  Future<GetWorldMarketSearchList> getWorldMarketSearchLists(String searchResult);
}

class GetWorldMarketSearchListRemoteDataSourceImpl implements GetWorldMarketSearchListRemoteDataSource {
  String HEROKU_URL = 'https://cors-anywhere.herokuapp.com/';
  String MARKET_URL = 'https://trade.kr.playblackdesert.com/Trademarket';

  final http.Client client;

  GetWorldMarketSearchListRemoteDataSourceImpl({required this.client});

  @override
  Future<GetWorldMarketSearchList> getWorldMarketSearchLists(String searchResult) async {
    final url = Uri.parse('$HEROKU_URL$MARKET_URL/GetWorldMarketSearchList');
    final header = {
      "X-Requested-With": "XMLHttpRequest",
      'Content-Type': 'application/json',
      'User-Agent': 'BlackDesert',
    };
    final body = {'searchResult': searchResult};
    final response =
    await http.post(url, headers: header, body: json.encode(body));

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body);
      return GetWorldMarketSearchList.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load info: ${response.statusCode}');
    }
  }
}


