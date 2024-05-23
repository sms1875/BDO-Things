// crate_calculate_provider.dart
import 'package:flutter/material.dart';
import 'package:bdo_things/constants.dart';
import 'package:bdo_things/service/desgin_calculate_service.dart';
import 'package:bdo_things/types/bdolyticsDTO.dart';

enum CrateSortStatus { none, profitAsc, profitDesc }

class DesignCalculateProvider with ChangeNotifier {
  final DesignCalculateService _crateService = DesignCalculateService();
  List<Design> _designs = [];
  List<Map<String, dynamic>> _crateData = [];
  CrateSortStatus _sortStatus = CrateSortStatus.none;
  String _originRoute = CONSTANTS.originRoutes.elementAt(2);
  String _destinationRoute = CONSTANTS.destinationRoutes.elementAt(1);
  bool _isLoading = false;
  Object? _error;

  List<Map<String, dynamic>> get crateData => _crateData;
  CrateSortStatus get sortStatus => _sortStatus;
  bool get isLoading => _isLoading;
  String get originRoute => _originRoute;
  String get destinationRoute => _destinationRoute;

  DesignCalculateProvider() {
    _loadData();
  }

  Future<void> _loadData() async {
    _isLoading = true;
    notifyListeners();

    try {
      _designs = await _crateService.fetchDesigns();
      await _loadTableData();
    } catch (e) {
      _error = e;
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> _loadTableData() async {
    _crateData = await _crateService.calculateCrateData(_designs, _originRoute, _destinationRoute);
    _sortTableData();
  }

  void _calculateSellingPriceAndProfit() {
    for (final data in _crateData) {
      final originalPrice = data['Product Sell Price'];
      data['sale_price'] = _crateService.calculateSellingPrice(originalPrice, _originRoute, _destinationRoute) * data['Product Quantity'];
      data['profit'] = data['sale_price'] - data['materialsTotalPrice'];
      data['profit_per'] = data['profit'] / data['Product Quantity'];
    }
    _sortTableData();
  }

  void _sortTableData() {
    if (_sortStatus == CrateSortStatus.profitDesc) {
      _crateData.sort((a, b) => b['profit'].compareTo(a['profit']));
    } else if (_sortStatus == CrateSortStatus.profitAsc) {
      _crateData.sort((a, b) => a['profit'].compareTo(b['profit']));
    } else {
      _crateData.sort((a, b) => a['id'].compareTo(b['id']));
    }
    notifyListeners();
  }

  void changeSortStatus() {
    if (_sortStatus == CrateSortStatus.none) {
      _crateData.sort((a, b) => b['profit'].compareTo(a['profit']));
      _sortStatus = CrateSortStatus.profitDesc;
    } else if (_sortStatus == CrateSortStatus.profitDesc) {
      _crateData.sort((a, b) => a['profit'].compareTo(b['profit']));
      _sortStatus = CrateSortStatus.profitAsc;
    } else if (_sortStatus == CrateSortStatus.profitAsc) {
      _crateData.sort((a, b) => a['id'].compareTo(b['id']));
      _sortStatus = CrateSortStatus.none;
    }
    notifyListeners();
  }

  void setOriginRoute(String route) {
    _originRoute = route;
    _calculateSellingPriceAndProfit();
    notifyListeners();
  }

  void setDestinationRoute(String route) {
    _destinationRoute = route;
    _calculateSellingPriceAndProfit();
    notifyListeners();
  }
}
