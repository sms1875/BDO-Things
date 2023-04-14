import 'package:bdo_things/domain/entities/event.dart';

abstract class EventRepository {
  Future<List<Event>> getEvents();
}
