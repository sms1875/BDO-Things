import 'package:bdo_things/domain/entities/coupon.dart';
import 'package:bdo_things/domain/repositories/coupon_repository.dart';
import 'package:bdo_things/data/datasources/coupon_remote_datasource.dart';


class CouponRepositoryImpl implements CouponRepository {
  final CouponRemoteDataSource _remoteDataSource;

  CouponRepositoryImpl({required CouponRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<List<Coupon>> getCoupons() async {
    return await _remoteDataSource.getCoupons();
  }
}
