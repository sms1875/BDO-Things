class CouponException implements Exception {
  final String message;

  CouponException(this.message);

  @override
  String toString() {
    return 'CouponException: $message';
  }
}