import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/constants.dart';

class EventBannerWidget extends StatefulWidget {
  const EventBannerWidget({Key? key}) : super(key: key);

  @override
  _EventBannerWidgetState createState() => _EventBannerWidgetState();
}

class _EventBannerWidgetState extends State<EventBannerWidget> {
  final firestoreInstance = FirebaseFirestore.instance;
  late List<Map<String, dynamic>> eventList;
  bool isLoading = true;
  int _selectedSlideIndex = 0;
  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _getEventData();
    _pageController = PageController(initialPage: 0);
    _startTimer();
  }

  @override
  void dispose() {
    _cancelTimer();
    super.dispose();
  }

  Future<void> _getEventData() async {
    final result = await firestoreInstance.collection("event").get();
    final dataList = result.docs.map((doc) => doc.data()).toList();
    setState(() {
      eventList = dataList;
      isLoading = false;
    });
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_pageController.page == eventList.length - 1) {
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

  Future<void> _launchUrl(String url) async {
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
            SizedBox(
              width: 300,
              height: 150,
              child: Image.network(
                eventList[index]['image'],
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              eventList[index]['title'],
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

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : MouseRegion(
      onEnter: (event) {
        _cancelTimer(); // cancel the timer when the user hovers over the page view
      },
      onExit: (event) {
        _startTimer();// restart the timer when the user leaves the area
      },
      child: Container(
        color: Constants.widgetBackgroundColor,
        width: 300,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text('Events', style: TextStyle(fontSize: 20)),
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