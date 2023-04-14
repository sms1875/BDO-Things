import 'package:bdo_things/domain/entities/coupon.dart';

abstract class CouponRepository {
  Future<List<Coupon>> getCoupons();
}
