import 'package:bdo_things/data/datasources/coupon_remote_datasource.dart';
import 'package:bdo_things/data/repositories/coupon_repository_impl.dart';
import 'package:bdo_things/domain/entities/coupon.dart';
import 'package:bdo_things/domain/usecases/coupon_usecase.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class CouponController {
  final http.Client _client;
  final CouponUseCase _couponUseCase;

  CouponController._(this._client, this._couponUseCase);

  static CouponController? _instance;

  static CouponController get instance {
    _instance ??= CouponController._(
      http.Client(),
      CouponUseCase(
        couponRepository: CouponRepositoryImpl(
          remoteDataSource: CouponRemoteDataSourceImpl(
            client: http.Client(),
          ),
        ),
      ),
    );
    return _instance!;
  }

  Future<List<Coupon>> getCouponList() async {
    try {
      final coupons = await _couponUseCase.fetchCoupons();
      return coupons;
    } finally {
      _client.close();
    }
  }

  String getRemainingTime(DateTime? expiry) {
    if (expiry == null || expiry.isBefore(DateTime.now())) {
      return 'N/A';
    }

    final diff = expiry.difference(DateTime.now());
    if (diff.inDays >= 1) {
      return '${diff.inDays}일 남음';
    } else if (diff.inHours >= 1) {
      return '${diff.inHours}시간 남음';
    } else {
      return '${diff.inMinutes}분 남음';
    }
  }

  bool copyCoupon(String code) {
    if (code.isEmpty) return false;

    Clipboard.setData(ClipboardData(text: code));
    return true;
  }
}