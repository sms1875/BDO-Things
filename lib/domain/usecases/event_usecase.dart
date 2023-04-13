import 'package:bdo_things/domain/entities/event.dart';
import 'package:bdo_things/domain/repositories/event_repository.dart';

class EventUseCase {
  final EventRepository _eventRepository;

  EventUseCase({required EventRepository eventRepository})
      : _eventRepository = eventRepository;

  Future<List<Event>> fetchEvents() async {
    return await _eventRepository.getEvents();
  }
}
