import '../entities/coupon.dart';

abstract class CouponRepository {
  Future<List<Coupon>> getCoupons();
}
