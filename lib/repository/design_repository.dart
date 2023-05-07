import 'dart:convert';

import 'package:bdo_things/constants.dart';
import 'package:bdo_things/data/design.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;



class DesignRepository {
  static const String FIRESTORE_URL = CONSTANTS.FIRESTORE_URL;
  static const String _designEndpoint = '/design';
  Future<List<Design>> getDesigns() async {
    try {
      final String designJson = await rootBundle.loadString('json/design_crate.json');
      final List<dynamic> decodedData = jsonDecode(designJson) as List<dynamic>;
      final designList = decodedData
          .map((design) => Design.fromMap(design))
          .toList();
      return designList;
    } on Exception catch (e) {
      throw 'DesignException: $e';
    } catch (e) {
      throw 'ServerException: $e';
    }
  }
  /*
  Future<List<Design>> getDesigns() async {
    try {
      final response = await http.get(Uri.parse(FIRESTORE_URL + _designEndpoint));
      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.body) as Map<String, dynamic>;
        final designList = (decodedData['documents'] as List)
            .map((document) => Design.fromMap(document['fields']))
            .toList();
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
  */
}