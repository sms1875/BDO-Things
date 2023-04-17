import 'dart:math';
import 'package:bdo_things/presentation/controllers/home/event_controller.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:bdo_things/domain/entities/event.dart';

class EventCalendarWidget extends StatefulWidget {
  const EventCalendarWidget({Key? key}) : super(key: key);

  @override
  _EventCalendarWidgetState createState() => _EventCalendarWidgetState();
}

class _EventCalendarWidgetState extends State<EventCalendarWidget> {
  final EventController _eventController = EventController.instance;
  late final Future<List<Event>> _eventListFuture;

  @override
  void initState() {
    super.initState();
    _eventListFuture = _eventController.getEventList();
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
          final eventDataList = snapshot.data!;
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
        }
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