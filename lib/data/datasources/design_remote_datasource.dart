import 'dart:convert';

import 'package:bdo_things/data/exceptions/server_exception.dart';
import 'package:bdo_things/domain/entities/design.dart';
import 'package:http/http.dart' as http;

abstract class DesignRemoteDataSource {
  Future<List<Design>> getDesigns();
}

class DesignRemoteDataSourceImpl implements DesignRemoteDataSource {
  static const String FIRESTORE_URL = 'https://firestore.googleapis.com/v1/projects/bdothings/databases/(default)/documents';
  static const String _designEndpoint = '/design';

  final http.Client client;

  DesignRemoteDataSourceImpl({required this.client});

  @override
  Future<List<Design>> getDesigns() async {
    try {
      final response = await client.get(Uri.parse(FIRESTORE_URL + _designEndpoint));
      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.body) as Map<String, dynamic>;
        final designList = (decodedData['documents'] as List)
            .map((document) => Design.fromMap(document['fields']))
            .toList();
        return designList;
      } else {
        throw ServerException('Failed to load data: ${response.statusCode}');
      }
    } on Exception catch (e) {
      throw 'DesignException: $e';
    } catch (e) {
      throw ServerException('Failed to load data: $e');
    }
  }
}