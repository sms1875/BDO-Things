import 'package:bdo_things/constants.dart';
import 'package:bdo_things/repository/design_remote_datasource.dart';
import 'package:bdo_things/repository/get_world_market_search_list_repository.dart';
import 'package:bdo_things/data/life_skill_data.dart';
import 'package:bdo_things/data/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TradeCrateSortStatus {
  none,
  profitAsc,
  profitDesc,
}

class TradeCrateCalculatorProvider extends ChangeNotifier {

  final DesignRepository _designRepository= DesignRepository();
  final GetWorldMarketSearchListRepository _getWorldMarketSearchListRepository = GetWorldMarketSearchListRepository();

  List<Design>  _designList = [];
  List<Design> get couponList => _designList;

  List<Map<String, dynamic>> _tradeCrateData = [];
  List<Map<String, dynamic>> get tradeCrateData => _tradeCrateData;

  TradeCrateSortStatus _sortStatus = TradeCrateSortStatus.none;
  TradeCrateSortStatus get sortStatus => _sortStatus;

  String _originRoute = CONSTANTS.originRoutes.elementAt(2);
  String _destinationRoute = CONSTANTS.destinationRoutes.elementAt(1);

  String get originRoute => _originRoute;
  String get destinationRoute => _destinationRoute;

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  Object? _error;
  Object? get error {
    final error=_error;
    _error= null;
    return error;
  }

  Future<void> update() async {
    setLoading(true);
    try {
      _designList = await _designRepository.getDesigns();
    } catch (e) {
      setError(e);
    }
    setLoading(false);
    notifyListeners();
  }

  void setLoading(bool isLoading) {
    _isLoading = isLoading;
  }

  void setError(Object error) {
    print(error);
    _error = error;
  }

  void setOriginRoute(String value) {
    _originRoute = value;
    notifyListeners();
  }

  void setDestinationRoute(String value) {
    _destinationRoute = value;
    notifyListeners();
  }

  Future<void> loadTableData() async {

    print('1');
    final designList = couponList;

    final dataWithMaterials = await Future.wait(designList.map((design) async {
      final materials = design.materials;
      int materialsTotalPrice = 0;
      for (final material in materials) {
        final marketPrice = await _getWorldMarketSearchListRepository.getWorldMarketSearchLists(material.materialItemId);
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


  int _calculateSellingPrice(int originalPrice) {
    const double defaultBargainBonus = 0.05;
    const double tradeLevelBounus = 0.005;

    double bargainBonus = defaultBargainBonus + lifeSkillDataList.firstWhere((data) => data['name'] == '무역')['lifeSkillLevel'] * tradeLevelBounus;
    num distanceBonus = CONSTANTS.distanceBonus[_originRoute]?[_destinationRoute] ?? 0;
    int sellingPrice = ((originalPrice) * ((1+distanceBonus)*(1+bargainBonus))).toInt();
    return sellingPrice;
  }
}