import 'package:bdo_things/data/datasources/coupon_remote_datasource.dart';
import 'package:bdo_things/data/exceptions/server_exception.dart';
import 'package:bdo_things/domain/entities/coupon.dart';
import 'package:bdo_things/domain/repositories/coupon_repository.dart';

class CouponRepositoryImpl implements CouponRepository {
  final CouponRemoteDataSource _remoteDataSource;

  CouponRepositoryImpl({required CouponRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<List<Coupon>> getCoupons() async {
    try {
      return await _remoteDataSource.getCoupons();
    } on Exception catch (e) {
      throw 'CouponException: $e';
    } catch (e) {
      throw ServerException('Failed to load data: $e');
    }
  }
}