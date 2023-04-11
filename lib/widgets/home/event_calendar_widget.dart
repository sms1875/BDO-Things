import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../../data/event_widget_data.dart';

class EventCalendarWidget extends StatefulWidget {
  const EventCalendarWidget({Key? key}) : super(key: key);

  @override
  _EventCalendarWidgetState createState() => _EventCalendarWidgetState();
}

class _EventCalendarWidgetState extends State<EventCalendarWidget> {

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      viewNavigationMode: ViewNavigationMode.none,
      minDate: DateTime.now(),
      maxDate: DateTime.now().add(Duration(days: 7)),
      view: CalendarView.timelineMonth,
      initialDisplayDate: DateTime.now(),
      timeSlotViewSettings: TimeSlotViewSettings(
        timeIntervalHeight: 60,
        startHour: 0,
        endHour: 24,
      ),
      dataSource: EventDataSource(eventList),
    );
  }
}

class EventDataSource extends CalendarDataSource {
  EventDataSource(List<Map<String, dynamic>> source) {
    appointments = <Appointment>[];
    for (var i = 0; i < source.length; i++) {
      final Map<String, dynamic> data = source[i];
      final DateTime expiry = data['expiry'];
      final DateTime now = DateTime.now();
      final Duration remainingTime = expiry.difference(now);
      final int daysRemaining = remainingTime.inDays;
      appointments?.add(Appointment(
        startTime: now,
        endTime: now.add(Duration(days: daysRemaining)),
        subject: data['title'],
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      ));
    }
  }
}
