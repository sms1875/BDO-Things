import 'dart:math';
import 'package:http/http.dart' as http;

import 'package:bdo_things/data/datasources/event_remote_datasource.dart';
import 'package:bdo_things/data/repositories/event_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:bdo_things/domain/entities/event.dart';
import 'package:bdo_things/domain/repositories/event_repository.dart';
import 'package:bdo_things/domain/usecases/event_usecase.dart';

class EventCalendarWidget extends StatefulWidget {
  const EventCalendarWidget({Key? key}) : super(key: key);

  @override
  _EventCalendarWidgetState createState() => _EventCalendarWidgetState();
}

class _EventCalendarWidgetState extends State<EventCalendarWidget> {
  late final EventRepository _eventRepository;
  late final EventUseCase _eventUseCase;
  late final Future<List<Event>> _eventListFuture;

  @override
  void initState() {
    super.initState();
    _eventRepository = EventRepositoryImpl(
      remoteDataSource: EventRemoteDataSourceImpl(client: http.Client()),
    );
    _eventUseCase = EventUseCase(eventRepository: _eventRepository);
    _eventListFuture = _eventUseCase.fetchEvents();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Event>>(
      future: _eventListFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData) {
          return Center(child: Text('No data found'));
        } else {
          final List<Event> eventList = snapshot.data!;
          return SfCalendar(
            view: CalendarView.week,
            showNavigationArrow: false,
            initialDisplayDate: DateTime.now(),
            headerHeight: 0,
            minDate: DateTime.now(),
            maxDate: DateTime.now().add(const Duration(days: 14)),
            firstDayOfWeek: DateTime.now().weekday,
            selectionDecoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.transparent),
            ),
            timeSlotViewSettings: const TimeSlotViewSettings(
              timelineAppointmentHeight: 100,
              timeInterval: Duration(hours: 1),
              timeIntervalHeight: 0,
              timeIntervalWidth: 0,
              timeRulerSize: 0 ,
            ),
            dataSource: _CalendarDataSource(eventList),
          );
        }
      },
    );
  }
}
class EventDataSource extends CalendarDataSource {
  EventDataSource(List<Map<String, dynamic>> source) {
    appointments = <Appointment>[];
    for (var i = 0; i < source.length; i++) {
      final Map<String, dynamic> data = source[i];
      final DateTime expiry = data['expiry'];
      final DateTime start = data['start'];
      final DateTime now = DateTime.now();
      final Duration remainingTime = expiry.difference(now);
      final int daysRemaining = remainingTime.inDays;
      final int randomIndex = Random(daysRemaining).nextInt(Colors.primaries.length);
      appointments?.add(Appointment(
        startTime: start,
        endTime: expiry,
        subject: data['title'],
        color: Colors.primaries[randomIndex],
      ));
    }
  }
}
class _CalendarDataSource extends CalendarDataSource {
  _CalendarDataSource(List<Event> eventList) {
    appointments = _getAppointments(eventList);
  }

  List<Appointment> _getAppointments(List<Event> eventList) {
    return eventList.map((event) {
      return Appointment(
        startTime: event.start,
        endTime: event.expiry,
        subject: event.title,
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      );
    }).toList();
  }
}
