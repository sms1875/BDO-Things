import 'dart:convert';

import 'package:bdo_things/domain/entities/event.dart';
import 'package:http/http.dart' as http;


abstract class EventRemoteDataSource {
  Future<List<Event>> getEvents();
}

class EventRemoteDataSourceImpl implements EventRemoteDataSource {
  final http.Client client;

  EventRemoteDataSourceImpl({required this.client});

  @override
  Future<List<Event>> getEvents() async {
    final response = await client.get(Uri.parse(
        'https://firestore.googleapis.com/v1/projects/bdothings/databases/(default)/documents/event'));

    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body) as Map<String, dynamic>;
      final eventList = (decodedData['documents'] as List)
          .map((document) => Event.fromMap(document['fields']))
          .toList();
      return eventList;
    } else {
      print('Failed to load data: ${response.statusCode}');
      throw Exception('Failed to load data');
    }
  }
}