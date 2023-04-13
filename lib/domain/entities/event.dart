class Event {
  final String title;
  final DateTime start;
  final DateTime expiry;
  final String url;
  final String image;

  Event({
    required this.title,
    required this.start,
    required this.expiry,
    required this.url,
    required this.image,
  });

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      title: map['title']['stringValue'],
      start: DateTime.parse(map['start']['stringValue']),
      expiry: DateTime.parse(map['expiry']['stringValue']),
      url: map['url']['stringValue'],
      image: map['image']['stringValue'],
    );
  }
}