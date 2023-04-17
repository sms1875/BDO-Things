import 'package:bdo_things/domain/entities/event.dart';
import 'package:bdo_things/domain/entities/get_world_market_search_list.dart';

abstract class GetWorldMarketSearchListRepository {
  Future<GetWorldMarketSearchList> getWorldMarketSearchLists(String searchResult);
}
