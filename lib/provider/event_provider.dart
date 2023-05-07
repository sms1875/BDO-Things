import 'dart:async';

import 'package:bdo_things/repository/event_remote_datasource.dart';
import 'package:bdo_things/data/event.dart';
import 'package:flutter/cupertino.dart';

class EventProvider extends ChangeNotifier {
  final EventRepository _eventRepository= EventRepository();
  List<Event> _events = [];
  List<Event> get events => _events;

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  Object? _error;
  Object? get error {
    final error=_error;
    _error= null;
    return error;
  }

  Future<void> update() async {
    setLoading(true);
    try {
      _events = await _eventRepository.getEvents();
    } catch (e) {
      setError(e);
    }
    setLoading(false);
    notifyListeners();
  }

  void setLoading(bool isLoading) {
    _isLoading = isLoading;
  }

  void setError(Object error) {
    print(error);
    _error = error;
  }
}
