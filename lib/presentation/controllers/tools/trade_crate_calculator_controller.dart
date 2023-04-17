import 'package:bdo_things/data/constants.dart';
import 'package:bdo_things/data/datasources/design_remote_datasource.dart';
import 'package:bdo_things/data/datasources/get_world_market_search_list_remote_datasource.dart';
import 'package:bdo_things/data/life_skill_data.dart';
import 'package:bdo_things/data/repositories/design_repository_impl.dart';
import 'package:bdo_things/data/repositories/get_world_market_search_list_repository_impl.dart';
import 'package:bdo_things/domain/entities/design.dart';
import 'package:bdo_things/domain/usecases/design_usecase.dart';
import 'package:bdo_things/domain/usecases/get_world_market_search_list_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

enum TradeCrateSortStatus {
  none,
  profitAsc,
  profitDesc,
}

class TradeCrateController extends ChangeNotifier {
  final http.Client _client;
  final DesignUseCase _designUseCase;
  final GetWorldMarketSearchListUseCase _getWorldMarketSearchListUseCase;

  TradeCrateController._(this._client, this._designUseCase, this._getWorldMarketSearchListUseCase);

  static TradeCrateController? _instance;

  static TradeCrateController get instance {
    _instance ??= TradeCrateController._(
      http.Client(),
      DesignUseCase(
        designRepository: DesignRepositoryImpl(
          remoteDataSource: DesignRemoteDataSourceImpl(
            client: http.Client(),
          ),
        ),
      ),
      GetWorldMarketSearchListUseCase(
        getWorldMarketSearchListRepository: GetWorldMarketSearchListRepositoryImpl(
          remoteDataSource: GetWorldMarketSearchListRemoteDataSourceImpl(
            client: http.Client(),
          ),
        ),
      ),
    );
    return _instance!;
  }

  Future<List<Design>> getCrateDesignList() async {
    try {
      final designs = await _designUseCase.fetchDesigns();
      return designs;
    } finally {
      _client.close();
    }
  }

  TradeCrateSortStatus _sortStatus = TradeCrateSortStatus.none;
  String selectedOriginRoute = CONSTANTS.originRoutes.elementAt(2);
  String selectedDestinationRoute = CONSTANTS.destinationRoutes.elementAt(1);

  List<Map<String, dynamic>> _tradeCrateData = []; // 빈 리스트로 초기화
  List<Map<String, dynamic>> get tradeCrateData => _tradeCrateData;
  TradeCrateSortStatus get sortStatus => _sortStatus;
  String get originRoute => selectedOriginRoute;
  String get destinationRoute => selectedDestinationRoute;

  void setOriginRoute(String value) {
    selectedOriginRoute = value;
    notifyListeners();
  }

  void setDestinationRoute(String value) {
    selectedDestinationRoute = value;
    notifyListeners();
  }

  Future<void> loadTableData() async {
    final designList = await _designUseCase.fetchDesigns();

    final dataWithMaterials = await Future.wait(designList.map((design) async {
      final materials = design.materials;
      int materialsTotalPrice = 0;
      for (final material in materials) {
        final marketPrice = await _getWorldMarketSearchListUseCase.fetchGetWorldMarketSearchLists(material.materialItemId);
        materialsTotalPrice += (int.parse(marketPrice.parseResultMsg()[2]) * (material.amount)).toInt();
      }

      return {
        'id': design.id,
        'name': design.name,
        'materialsTotalPrice': materialsTotalPrice,
        'sale_price': _calculateSellingPrice(design.originalPrice),
        'profit': _calculateSellingPrice(design.originalPrice) - materialsTotalPrice,
      };
    }));

    List<Map<String, dynamic>> sortedData = dataWithMaterials;
    if (_sortStatus == TradeCrateSortStatus.profitDesc) {
      sortedData.sort((a, b) => b['profit'].compareTo(a['profit']));
    } else if (_sortStatus == TradeCrateSortStatus.profitAsc) {
      sortedData.sort((a, b) => a['profit'].compareTo(b['profit']));
    } else {
      sortedData.sort((a, b) => a['id'].compareTo(b['id']));
    }

    _tradeCrateData = sortedData;
    notifyListeners();
  }

  void sortTableData() {
    switch (_sortStatus) {
      case TradeCrateSortStatus.none:
        _tradeCrateData.sort((a, b) => b['profit'].compareTo(a['profit']));
        _sortStatus = TradeCrateSortStatus.profitDesc;
        break;
      case TradeCrateSortStatus.profitDesc:
        _tradeCrateData.sort((a, b) => a['profit'].compareTo(b['profit']));
        _sortStatus = TradeCrateSortStatus.profitAsc;
        break;
      default:
        _tradeCrateData.sort((a,b) => a['id'].compareTo(b['id']));
        _sortStatus = TradeCrateSortStatus.none;
    }
    notifyListeners();
  }

  static const double baseBargainBonus = 0.05;
  static const double bargainBonusPerTradeLevel = 0.005;

  int _calculateSellingPrice(int originalPrice) {
    double bargainBonus = baseBargainBonus + lifeSkillDataList.firstWhere((data) => data['name'] == '무역')['lifeSkillLevel'] * bargainBonusPerTradeLevel;
    num distanceBonus = CONSTANTS.distanceBonus[selectedOriginRoute]?[selectedDestinationRoute] ?? 0;
    int sellingPrice = ((originalPrice) * ((1+distanceBonus)*(1+bargainBonus))).toInt();
    return sellingPrice;
  }
}