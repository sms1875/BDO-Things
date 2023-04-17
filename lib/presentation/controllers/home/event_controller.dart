import 'dart:async';

import 'package:bdo_things/data/datasources/event_remote_datasource.dart';
import 'package:bdo_things/data/repositories/event_repository_impl.dart';
import 'package:bdo_things/domain/entities/event.dart';
import 'package:bdo_things/domain/usecases/event_usecase.dart';
import 'package:bdo_things/presentation/controllers/base_controller.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class EventController extends BaseController {
  final EventUseCase _eventUseCase;
  Future<List<Event>>? _eventListFuture;

  static EventController? _instance;

  static EventController get instance {
    _instance ??= EventController._(
      http.Client(),
      EventUseCase(
        eventRepository: EventRepositoryImpl(
          remoteDataSource: EventRemoteDataSourceImpl(
            client: http.Client(),
          ),
        ),
      ),
    );
    return _instance!;
  }

  EventController._(http.Client client, this._eventUseCase) : super(client);

  Future<List<Event>> getEventList() async {
    _eventListFuture ??= _fetchEventList();
    return await _eventListFuture!;
  }

  Future<List<Event>> _fetchEventList() async {
    try {
      final events = await _eventUseCase.fetchEvents();
      return events;
    } finally {
      dispose();
    }
  }

  Future<void> launchUrl(Event eventData) async {
    if (await canLaunch(eventData.url)) {
      await launch(eventData.url);
    } else {
      throw 'Could not launch ${eventData.url}';
    }
  }
}
