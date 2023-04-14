import 'dart:async';
import 'package:bdo_things/domain/entities/event.dart';
import 'package:bdo_things/presentation/controllers/home/event_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bdo_things/data/constants.dart';


class EventBannerWidget extends StatefulWidget {
  const EventBannerWidget({Key? key}) : super(key: key);
  @override
  _EventBannerWidgetState createState() => _EventBannerWidgetState();
}

class _EventBannerWidgetState extends State<EventBannerWidget> {
  late final EventController _eventController = EventController.instance;
  late final Future<List<Event>> _eventListFuture;
  CarouselController _carouselController = CarouselController();
  int selectedSlideIndex = 0;

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
          return Container(
              color: CONSTANTS.WIDGET_BACKGROUND_COLOR,
              width: 300,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Events', style: TextStyle(fontSize: 20)),
                  CarouselSlider(
                    items: eventDataList.map((eventData) => EventSlideWidget(eventData: eventData)).toList(),
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      height: 250,
                      initialPage: 0,
                      viewportFraction: 1,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      pauseAutoPlayOnTouch: true,
                        pauseAutoPlayOnManualNavigate: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          selectedSlideIndex = index;
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      eventDataList.length,
                          (index) => SlideNum( // use the slidenum widget here
                        index: index,
                        selectedIndex: selectedSlideIndex,
                      ),
                    ),
                  )
                ],
              )
          );
        }
      },
    );
  }
}

class EventSlideWidget extends StatelessWidget {
  EventSlideWidget({Key? key, required this.eventData}) : super(key: key);

  final Event eventData;
  late final EventController _eventController = EventController.instance;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _eventController.launchUrl(eventData),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 150,
              child: Image.network(
                eventData.image,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              eventData.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class SlideNum extends StatelessWidget {
  final int index;
  final int selectedIndex;

  const SlideNum({
    Key? key,
    required this.index,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      width: index == selectedIndex ? 12 : 6,
      height: index == selectedIndex ? 12 : 6,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == selectedIndex ? Colors.blue : Colors.grey,
      ),
    );
  }
}