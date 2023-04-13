import 'dart:async';
import 'package:bdo_things/domain/entities/event.dart';
import 'package:http/http.dart' as http;

import 'package:bdo_things/data/datasources/event_remote_datasource.dart';
import 'package:bdo_things/data/repositories/event_repository_impl.dart';
import 'package:bdo_things/domain/repositories/event_repository.dart';
import 'package:bdo_things/domain/usecases/event_usecase.dart';
import 'package:flutter/material.dart';
import 'package:bdo_things/data/constants.dart';
import 'event_slider_widget.dart';

class EventBannerWidget extends StatefulWidget {
  const EventBannerWidget({Key? key}) : super(key: key);
  @override
  _EventBannerWidgetState createState() => _EventBannerWidgetState();
}

class _EventBannerWidgetState extends State<EventBannerWidget> {
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


    _pageController = PageController(initialPage: 0);
    _startTimer();
  }

  late List<List<Event>> eventDataList;
  int _selectedSlideIndex = 0;
  late PageController _pageController;
  late Timer _timer;

  @override
  void dispose() {
    _cancelTimer();
    super.dispose();
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
          return MouseRegion(
            onEnter: (event) {
              _cancelTimer(); // cancel the timer when the user hovers over the page view
            },
            onExit: (event) {
              _startTimer();// restart the timer when the user leaves the area
            },
            child: Container(
              color: CONSTANTS.WIDGET_BACKGROUND_COLOR,
              width: 300,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Events', style: TextStyle(fontSize: 20)),
                  SizedBox(
                    height: 200,
                    width: 250,
                    child: PageView.builder(
                      itemCount: eventDataList.length,
                      itemBuilder: (context, index) => EventSlideWidget(eventData:eventDataList[index]),
                      controller: _pageController,
                      onPageChanged: (index) => setState(() {
                        _selectedSlideIndex = index;
                      }),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      eventDataList.length,
                          (index) => GestureDetector(
                        onTap: () {
                          _pageController.animateToPage(
                            index,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                          setState(() {
                            _selectedSlideIndex = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(4),
                          child: Text(
                            (index + 1).toString(),
                            style: TextStyle(
                              color: index == _selectedSlideIndex
                                  ? Colors.blue
                                  : Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}