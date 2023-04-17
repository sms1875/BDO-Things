import 'package:bdo_things/domain/entities/get_world_market_search_list.dart';
import 'package:bdo_things/domain/repositories/get_world_market_search_list_repository.dart';

class GetWorldMarketSearchListUseCase {
  final GetWorldMarketSearchListRepository _getWorldMarketSearchListRepository;

  GetWorldMarketSearchListUseCase({required GetWorldMarketSearchListRepository getWorldMarketSearchListRepository})
      : _getWorldMarketSearchListRepository = getWorldMarketSearchListRepository;

  Future<GetWorldMarketSearchList> fetchGetWorldMarketSearchLists(String searchResult) async {
    return await _getWorldMarketSearchListRepository.getWorldMarketSearchLists(searchResult);
  }
}
