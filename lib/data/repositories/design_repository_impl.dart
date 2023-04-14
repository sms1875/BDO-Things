import 'package:bdo_things/data/datasources/design_remote_datasource.dart';
import 'package:bdo_things/data/exceptions/server_exception.dart';
import 'package:bdo_things/domain/entities/design.dart';
import 'package:bdo_things/domain/repositories/design_repository.dart';

class DesignRepositoryImpl implements DesignRepository {
  final DesignRemoteDataSource _remoteDataSource;

  DesignRepositoryImpl({required DesignRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<List<Design>> getDesigns() async {
    try {
      return await _remoteDataSource.getDesigns();
    } on Exception catch (e) {
      throw 'DesignException: $e';
    } catch (e) {
      throw ServerException('Failed to load data: $e');
    }
  }
}