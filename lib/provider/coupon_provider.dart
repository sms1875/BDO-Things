import 'package:bdo_things/repository/coupon_repository.dart';
import 'package:bdo_things/data/coupon.dart';
import 'package:flutter/cupertino.dart';

class CouponProvider extends ChangeNotifier  {
  final CouponRepository _couponRepository= CouponRepository();
  List<Coupon> _coupons = [];
  List<Coupon> get coupons => _coupons;

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  Object? _error;
  Object? get error {
    final error=_error;
    _error= null;
    return error;
  }

  Future<void> update() async {
    setLoading(true);
    try {
      _coupons = await _couponRepository.getCoupons();
    } catch (e) {
      setError(e);
    }
    setLoading(false);
    notifyListeners();
  }

  void setLoading(bool isLoading) {
    _isLoading = isLoading;
  }

  void setError(Object error) {
    print(error);
    _error = error;
  }
}