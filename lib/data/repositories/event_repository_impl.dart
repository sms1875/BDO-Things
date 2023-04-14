import 'package:bdo_things/data/exceptions/server_exception.dart';
import 'package:bdo_things/domain/entities/event.dart';
import 'package:bdo_things/domain/repositories/event_repository.dart';
import 'package:bdo_things/data/datasources/event_remote_datasource.dart';

class EventRepositoryImpl implements EventRepository {
  final EventRemoteDataSource _remoteDataSource;

  EventRepositoryImpl({required EventRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<List<Event>> getEvents() async {
    try {
      return await _remoteDataSource.getEvents();
    } on Exception catch (e) {
      throw 'CouponException: $e';
    } catch (e) {
      throw ServerException('Failed to load data: $e');
    }
  }
}