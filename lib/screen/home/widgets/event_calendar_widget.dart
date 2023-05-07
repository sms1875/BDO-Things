import 'dart:math';
import 'package:bdo_things/provider/event_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:bdo_things/data/event.dart';

class EventCalendarWidget extends StatefulWidget {
  const EventCalendarWidget({Key? key}) : super(key: key);

  @override
  _EventCalendarWidgetState createState() => _EventCalendarWidgetState();
}

class _EventCalendarWidgetState extends State<EventCalendarWidget> {

  @override
  Widget build(BuildContext context) {
    return  Consumer<EventProvider>(
      builder: (context, provider, child) {
        final List<Event> eventDataList = provider.events;
        eventDataList.sort((a,b) => b.boardno.compareTo(a.boardno));
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
            timeRulerSize: 0,
          ),
          dataSource: _CalendarDataSource(eventDataList),
        );
      },
    );
  }
}

class _CalendarDataSource extends CalendarDataSource {
  _CalendarDataSource(List<Event> eventList) {
    appointments = _getAppointments(eventList);
  }

  List<Appointment> _getAppointments(List<Event> eventList) => eventList.map(
        (event) => Appointment(
      startTime: event.start,
      endTime: event.expiry,
      subject: event.title,
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
    ),
  ).toList();
}