import 'dart:async';
import 'package:bdo_things/domain/entities/event.dart';
import 'package:bdo_things/data/datasources/event_remote_datasource.dart';
import 'package:bdo_things/data/repositories/event_repository_impl.dart';
import 'package:bdo_things/domain/repositories/event_repository.dart';
import 'package:bdo_things/domain/usecases/event_usecase.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EventController {
  final http.Client _client;
  final EventUseCase _eventUseCase;

  EventController._(this._client, this._eventUseCase);

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

  late List<List<Event>> eventDataList;
  late PageController _pageController;
  late Timer _timer;


  void dispose() {
    _cancelTimer();
  }

  void startAutoSlide() {
    if (_pageController != null && _timer == null) {
      _startTimer();
    }
  }


  PageController getPageController() {
    return _pageController;
  }

  void init() {
    eventDataList = [];

    _pageController = PageController(initialPage: 0);
    _startTimer();
  }

  void _startTimer() {//자동으로 페이지 전환
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_pageController.page == eventDataList.length - 1) {
        _pageController.animateToPage(0,
            duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else {
        _pageController.nextPage(
            duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      }
    });
  }

  void _cancelTimer() {
    _timer.cancel();
  }
}