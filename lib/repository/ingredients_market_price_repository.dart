import 'package:bdo_things/data/market_dto.dart';
import 'package:bdo_things/config.dart';
import 'package:dio/dio.dart';

class IngredientsMarketPriceRepository {
  final Dio _dio = Dio();

  Future<List<SearchedItemDTO>> getIngredientsMarketPrice() async {
    try {
      final response = await _dio.get('${Config.apiUrl}/getIngredientsMarketPrice');
      if (response.statusCode == 200) {
        final ingredientsList = (response.data as List)
            .map((json) => SearchedItemDTO.fromJson(json))
            .toList();
        return ingredientsList;
      } else {
        throw Exception('Failed to load waitMarketList');
      }
    } catch (e) {
      throw Exception('Failed to load waitMarketList: $e');
    }
  }
}