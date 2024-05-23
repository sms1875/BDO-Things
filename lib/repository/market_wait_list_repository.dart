import 'dart:convert';
import 'package:bdo_things/types/marketDTO.dart';
import 'package:bdo_things/config.dart';
import 'package:http/http.dart' as http;

class MarketWaitListRepository {
  Future<List<WaitListItemDTO>> getMarketWaitList() async {
    final response = await http.get(Uri.parse('${Config.apiUrl}/getMarketWaitList'));

    if (response.statusCode == 200) {
      final List<dynamic> decodedData = jsonDecode(response.body);
      final marketWaitList = decodedData.map((json) => WaitListItemDTO.fromJson(json)).toList();
      return marketWaitList;
    } else {
      throw Exception('Failed to load waitMarketList');
    }
  }
}
