import 'dart:convert';
import 'package:bdo_things/data/market_dto.dart';
import 'package:bdo_things/config.dart';
import 'package:dio/dio.dart';

class MarketWaitListRepository {
  final Dio _dio = Dio();

  Future<List<WaitListItemDTO>> getMarketWaitList() async {
    try {
      final response = await _dio.get('${Config.apiUrl}/getMarketWaitList');

      if (response.statusCode == 200) {
        final marketWaitList = (response.data as List)
            .map((json) => WaitListItemDTO.fromJson(json))
            .toList();
        return marketWaitList;
      } else {
        throw Exception(
            'Failed to load waitMarketList: ${response.statusCode} ${response.statusMessage}');
      }
    } catch (e) {
      throw Exception('Failed to load waitMarketList: $e');
    }
  }
}
