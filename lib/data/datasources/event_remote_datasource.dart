import 'dart:convert';

import 'package:bdo_things/data/exceptions/server_exception.dart';
import 'package:bdo_things/domain/entities/event.dart';
import 'package:http/http.dart' as http;

abstract class EventRemoteDataSource {
  Future<List<Event>> getEvents();
}

class EventRemoteDataSourceImpl implements EventRemoteDataSource {
  static const String BASE_URL = 'https://firestore.googleapis.com/v1/projects/bdothings/databases/(default)/documents';
  static const String _eventEndpoint = '/event';

  final http.Client client;

  EventRemoteDataSourceImpl({required this.client});

  @override
  Future<List<Event>> getEvents() async {
    try {
      final response = await client.get(Uri.parse(BASE_URL + _eventEndpoint));
      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.body) as Map<String, dynamic>;
        final eventList = (decodedData['documents'] as List)
            .map((document) => Event.fromMap(document['fields']))
            .toList();
        return eventList;
      } else {
        throw ServerException('Failed to load data: ${response.statusCode}');
      }
    } on Exception catch (e) {
      throw 'EventException: $e';
    } catch (e) {
      throw ServerException('Failed to load data: $e');
    }
  }
}