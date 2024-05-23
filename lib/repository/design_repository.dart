import 'dart:convert';
import 'package:bdo_things/types/bdolyticsDTO.dart';
import 'package:bdo_things/config.dart';
import 'package:http/http.dart' as http;

class DesignRepository {
  Future<List<Design>> getDesigns() async {
    final response = await http.get(Uri.parse('${Config.apiUrl}/getDesignDetails'));

    if (response.statusCode == 200) {
      final List<dynamic> decodedData = jsonDecode(response.body);
      final designList = decodedData.map((json) => Design.fromJson(json)).toList();
      return designList;
    } else {
      throw Exception('Failed to load designs');
    }
  }
}