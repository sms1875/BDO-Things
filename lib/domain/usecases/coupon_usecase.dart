import '../../domain/entities/coupon.dart';
import '../../domain/repositories/coupon_repository.dart';

class CouponUseCase {
  final CouponRepository _couponRepository;

  CouponUseCase({required CouponRepository couponRepository})
      : _couponRepository = couponRepository;

  Future<List<Coupon>> fetchCoupons() async {
    return await _couponRepository.getCoupons();
  }
}
