import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/event_widget_data.dart';
import '../utils/constants.dart';

class EventsBannerWidget extends StatefulWidget {
  const EventsBannerWidget({Key? key}) : super(key: key);

  @override
  _EventsBannerWidgetState createState() => _EventsBannerWidgetState();
}

class _EventsBannerWidgetState extends State<EventsBannerWidget> {
  int _selectedSlideIndex = 0;
  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _startTimer();
  }

  @override
  void dispose() {
    _cancelTimer();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (_pageController.page == eventList.length - 1) {
        _pageController.animateToPage(0,
            duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else {
        _pageController.nextPage(
            duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
      }
    });
  }

  void _cancelTimer() {
    _timer.cancel();
  }

  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _buildSlide(int index) {
    return GestureDetector(
      onTap: () => _launchUrl(eventList[index]['url']),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(eventList[index]['image']),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              eventList[index]['title'],
              style: TextStyle(
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

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        _cancelTimer(); // cancel the timer when the user hovers over the page view
      },
      onExit: (event) {
        _startTimer();// restart the timer when the user leaves the area
      },
      child: Container(
        color: Constants.widgetBackgroundColor,
        width: 300,
        height: 250,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: 250,
              child: PageView.builder(
                itemCount: eventList.length,
                itemBuilder: (context, index) => _buildSlide(index),
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
                eventList.length,
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
}