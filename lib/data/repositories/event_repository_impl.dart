import 'package:bdo_things/domain/entities/event.dart';
import 'package:bdo_things/domain/repositories/event_repository.dart';
import 'package:bdo_things/data/datasources/event_remote_datasource.dart';


class EventRepositoryImpl implements EventRepository {
  final EventRemoteDataSource _remoteDataSource;

  EventRepositoryImpl({required EventRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<List<Event>> getEvents() async {
    return await _remoteDataSource.getEvents();
  }
}