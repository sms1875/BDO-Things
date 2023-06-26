import 'dart:convert';
import 'dart:html';

import 'package:bdo_things/constants.dart';
import 'package:bdo_things/data/event.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

class EventRepository {
  String PROXY_URL = 'https://cors-anywhere.fly.dev/';
  String EVENT_URL = 'https://www.kr.playblackdesert.com/ko-KR/News/Notice?boardType=3';

  Future<List<Event>> getEvents() async {
    final url = Uri.parse('$PROXY_URL$EVENT_URL');
    final header = {
      "X-Requested-With": "XMLHttpRequest",
      'Content-Type': 'application/json',
      'User-Agent': 'BlackDesert',
    };
    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      final document = parse(response.body);
      final paging = document
          .getElementById('paging')!
          .querySelectorAll('a')
          .map((a) => a.attributes['href']!)
          .toSet()
          .toList();

      final eventList = <Event>[];

      _extractEventDetails(document, eventList);

      //2페이지 이상일 경우
      if (paging.length > 1) {
        for (int i = 1; i < paging.length; i++) {
          final response = await http.get(Uri.parse('$PROXY_URL$EVENT_URL&searchType=&searchText=&Page=$i'), headers: header);
          if (response.statusCode == 200) {
            final document = parse(response.body);
            _extractEventDetails(document, eventList);
          } else {
            throw 'ServerException: ${response.statusCode}';
          }
        }
      }

      return eventList;
    } else {
      throw 'ServerException: ${response.statusCode}';
    }
  }

  void _extractEventDetails(dynamic document, List<Event> eventList) {
    document
        .querySelectorAll('div.event_list > ul > li')
        .forEach((li) {
      final a = li.querySelector('a')!;
      final boardno = a.attributes['data-boardno']!;
      final title = a.querySelector('strong.title')!.text.trim();
      final imgSrc = a.querySelector('img')!.attributes['src']!;
      final href = a.attributes['href']!;
      String count = a.querySelector('span.count > em')!.text.trim();

      //count가 상시일 경우 365로 설정
      if (int.tryParse(count) == null) {
        count = '365';
      }

      final days = int.parse(count);
      final start = DateTime.now().toUtc();
      final expiry = start.add(Duration(days: days));

      final event = Event(
        boardno: boardno,
        title: title,
        image: imgSrc,
        url: href,
        start: start,
        expiry: expiry,
      );

      eventList.add(event);
    });
  }
}
