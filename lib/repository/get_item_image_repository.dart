import 'dart:typed_data';
import 'package:bdo_things/config.dart';
import 'package:dio/dio.dart';

class GetItemImageRepository {
  final Dio _dio = Dio();

  Future<Uint8List> fetchItemImage(String itemId) async {
    try {
      final response = await _dio.get('${Config.apiUrl}/images/items/$itemId',
          options: Options(responseType: ResponseType.bytes));
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to load image');
      }
    } catch (e) {
      throw Exception('Failed to load image: $e');
    }
  }
}
