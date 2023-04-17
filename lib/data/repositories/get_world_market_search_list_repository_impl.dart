import 'dart:async';

import 'package:bdo_things/data/datasources/get_world_market_search_list_remote_datasource.dart';
import 'package:bdo_things/data/exceptions/server_exception.dart';
import 'package:bdo_things/domain/entities/get_world_market_search_list.dart';
import 'package:bdo_things/domain/repositories/get_world_market_search_list_repository.dart';


class GetWorldMarketSearchListRepositoryImpl implements GetWorldMarketSearchListRepository {
  final GetWorldMarketSearchListRemoteDataSource _remoteDataSource;

  GetWorldMarketSearchListRepositoryImpl({required GetWorldMarketSearchListRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<GetWorldMarketSearchList> getWorldMarketSearchLists(String searchResult) async {
    try {
      return await _remoteDataSource.getWorldMarketSearchLists(searchResult);
    } on Exception catch (e) {
      throw 'CouponException: $e';
    } catch (e) {
      throw ServerException('Failed to load data: $e');
    }
  }
}