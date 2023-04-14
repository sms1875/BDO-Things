import 'dart:async';

import 'package:bdo_things/data/datasources/event_remote_datasource.dart';
import 'package:bdo_things/data/repositories/event_repository_impl.dart';
import 'package:bdo_things/domain/entities/event.dart';
import 'package:bdo_things/domain/repositories/event_repository.dart';
import 'package:bdo_things/domain/usecases/event_usecase.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class EventController {
  final http.Client _client;
  final EventUseCase _eventUseCase;

  late List<List<Event>> eventDataList;
  bool isHovering = false;

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

  Future<List<Event>> getEventList() async {
    try {
      final events = await _eventUseCase.fetchEvents();
      return events;
    } finally {
      _client.close();
    }
  }

  EventController._(this._client, this._eventUseCase);

  Future<void> launchUrl(Event eventData) async {
    if (await canLaunch(eventData.url)) {
      await launch(eventData.url);
    } else {
      throw 'Could not launch ${eventData.url}';
    }
  }
}