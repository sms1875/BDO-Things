class Event {
  final String title;
  final DateTime start;
  final DateTime expiry;
  final String url;
  final String image;
  final String boardno;

  Event({
    required this.title,
    required this.start,
    required this.expiry,
    required this.url,
    required this.image,
    required this.boardno,
  });

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      boardno: map['boardno']['integerValue'],
      title: map['title']['stringValue'],
      start: DateTime.parse(map['start']['stringValue']),
      expiry: DateTime.parse(map['expiry']['stringValue']),
      url: map['url']['stringValue'],
      image: map['image']['stringValue'],
    );
  }
}