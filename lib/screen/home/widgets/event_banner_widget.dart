import 'dart:async';
import 'package:bdo_things/data/event.dart';
import 'package:bdo_things/provider/event_provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bdo_things/constants.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';


class EventBannerWidget extends StatefulWidget {
  const EventBannerWidget({Key? key}) : super(key: key);
  @override
  _EventBannerWidgetState createState() => _EventBannerWidgetState();
}

class _EventBannerWidgetState extends State<EventBannerWidget> {
  final CarouselController _carouselController = CarouselController();
  int selectedSlideIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<EventProvider>(
        builder: (context, provider, child) {
          final List<Event> eventDataList = provider.events;
          return Container(
              color: CONSTANTS.WIDGET_BACKGROUND_COLOR,
              width: 300,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Events', style: TextStyle(fontSize: 20)),
                  CarouselSlider(
                    items: eventDataList.map((eventData) => EventSlideWidget( eventData)).toList(),
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
                         index,
                         selectedSlideIndex,
                      ),
                    ),
                  )
                ],
              )
          );
        }
    );
  }

  Widget EventSlideWidget (Event eventData) {
    return GestureDetector(
      onTap: () => launchUrl(eventData),
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

  Widget SlideNum(int index, int selectedIndex) {
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

  Future<void> launchUrl(Event eventData) async {
    if (await canLaunch(eventData.url)) {
      await launch(eventData.url);
    } else {
      throw 'Could not launch ${eventData.url}';
    }
  }
}