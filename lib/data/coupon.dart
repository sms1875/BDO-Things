class Coupon {
  final String code;
  final DateTime expiry;
  final List<String> rewards;

  Coupon({
    required this.code,
    required this.expiry,
    required this.rewards,
  });

  factory Coupon.fromMap(Map<String, dynamic> map) {
    return Coupon(
      code: map['code']['stringValue'],
      expiry: DateTime.parse(map['expiry']['stringValue']),
      rewards: map['rewards']['arrayValue']['values']
          .map((reward) => reward['stringValue'])
          .toList()
          .cast<String>(),
    );
  }
}