import 'dart:convert';

import 'package:bdo_things/constants.dart';
import 'package:bdo_things/data/event.dart';
import 'package:http/http.dart' as http;


class EventRepository {
  static const String BASE_URL = CONSTANTS.FIRESTORE_URL;
  static const String _eventEndpoint = '/event';

  Future<List<Event>> getEvents() async {
    try {
      final response = await http.get(Uri.parse(BASE_URL + _eventEndpoint));
      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.body) as Map<String, dynamic>;
        final eventList = (decodedData['documents'] as List)
            .map((document) => Event.fromMap(document['fields']))
            .toList();
        return eventList;
      } else {
        throw 'ServerException: ${response.statusCode}';
      }
    } on Exception catch (e) {
      throw 'EventException: $e';
    } catch (e) {
      throw 'ServerException: $e';
    }
  }
}