import 'dart:async';
import 'package:bdo_things/domain/entities/event.dart';
import 'package:bdo_things/presentation/controllers/home/event_controller.dart';
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
  late final EventController _eventController = EventController.instance;
  late final Future<List<Event>> _eventListFuture;
  late PageController _pageController;
  int _selectedSlideIndex = 0;

  @override
  void initState() {
    super.initState();
    _eventController.init();
    _eventListFuture = _eventController.getEventList();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _eventController.dispose();
    super.dispose();
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
          // Initialize the page controller inside the builder method
          _pageController = PageController(initialPage: 0);
          return MouseRegion(
            onEnter: (event) {
              _eventController.dispose();
            },
            onExit: (event) {
              _eventController.startAutoSlide();
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
                      itemBuilder: (context, index) => EventSlideWidget(
                        eventData: eventDataList[index],
                      ),
                      controller: _pageController,
                      onPageChanged: (index) {
                        // Reinitialize the page controller inside the onPageChanged callback
                        _pageController = PageController(initialPage: index);
                        setState(() {
                          _selectedSlideIndex = index;
                        });
                      },
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