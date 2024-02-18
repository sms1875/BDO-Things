import 'dart:convert';
import 'package:bdo_things/data/design.dart';

import 'package:http/http.dart' as http;

class DesignRepository {
  Future<List<Design>> getDesigns() async {
    try {
      final response = await http.post(Uri.parse('http://localhost:3000/getDesignDetails'));

      if (response.statusCode == 200) {
        final List<dynamic> decodedData = jsonDecode(response.body) as List<dynamic>;
        final designList = decodedData.map((design) => Design.fromMap(design)).toList();
        return designList;
      } else {
        throw 'ServerException: ${response.statusCode}';
      }
    } on Exception catch (e) {
      throw 'DesignException: $e';
    } catch (e) {
      throw 'ServerException: $e';
    }
  }
}