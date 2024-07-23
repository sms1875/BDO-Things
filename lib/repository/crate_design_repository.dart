import 'package:bdo_things/data/bdolytics_dto.dart';
import 'package:bdo_things/config.dart';
import 'package:dio/dio.dart';

class CrateDesignRepository {
  final Dio _dio = Dio();

  Future<List<DesignDTO>> getCrateDesigns() async {
    try {
      final response = await _dio.get('${Config.apiUrl}/getCrateDesigns');
      if (response.statusCode == 200) {
        final designList = (response.data as List)
            .map((json) => DesignDTO.fromJson(json))
            .toList();
        return designList;
      } else {
        throw Exception(
            'Failed to load designs: ${response.statusCode} ${response.statusMessage}');
      }
    } catch (e) {
      throw Exception('Failed to load designs: $e');
    }
  }

  Future<List<ItemDTO>> getCrateProducts() async {
    try {
      final response = await _dio.get('${Config.apiUrl}/getCrateProducts');
      if (response.statusCode == 200) {
        final designList = (response.data as List)
            .map((json) => ItemDTO.fromJson(json))
            .toList();
        return designList;
      } else {
        throw Exception(
            'Failed to load products: ${response.statusCode} ${response.statusMessage}');
      }
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }

  Future<List<ItemDTO>> getCrateIngredients() async {
    try {
      final response = await _dio.get('${Config.apiUrl}/getCrateIngredients');
      if (response.statusCode == 200) {
        final designList = (response.data as List)
            .map((json) => ItemDTO.fromJson(json))
            .toList();
        return designList;
      } else {
        throw Exception(
            'Failed to load ingredients: ${response.statusCode} ${response.statusMessage}');
      }
    } catch (e) {
      throw Exception('Failed to load ingredients: $e');
    }
  }
}
