import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:bdo_things/data/constants.dart';
import 'package:bdo_things/data/life_skill_data.dart';
import 'package:bdo_things/get_world_market_search_list_api.dart';

enum TradeCrateSortStatus {
  none,
  profitAsc,
  profitDesc,
}

class TradeCrateCalculatorWidget extends StatefulWidget {
  TradeCrateCalculatorWidget({Key? key}) : super(key: key);

  @override
  _TradeCrateCalculatorWidgetState createState() => _TradeCrateCalculatorWidgetState();
}

class _TradeCrateCalculatorWidgetState extends State<TradeCrateCalculatorWidget> {
  final firestoreInstance = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> getTradeCrateDesignData() async {
    var result = await firestoreInstance.collection("design").get();
    List<Map<String, dynamic>> dataList = [];
    for (var result in result.docs) {
      dataList.add(result.data());
    }
    return dataList;
  }

  late List<Map<String, dynamic>> _tradeCrateData;
  late TradeCrateSortStatus _sortStatus;
  late String selectedOriginRoute;
  late String selectedDestinationRoute;
  late bool isLoading;

  @override
  void initState() {
    super.initState();
    isLoading = true;
    getTradeCrateDesignData().then((dataList) {
      _tradeCrateData = dataList;
      print(_tradeCrateData);
      _sortStatus = TradeCrateSortStatus.none;
      selectedOriginRoute = CONSTANTS.originRoutes.elementAt(2);
      selectedDestinationRoute = CONSTANTS.destinationRoutes.elementAt(1);
      _getTableData();
      setState(() {
        isLoading = false;
      });
    });
  }

  Future<void> _getTableData() async {
    final dataWithMaterials = <Map<String, dynamic>>[];
    for (final crate in _tradeCrateData) {
      final materials = crate['materials'] as List<dynamic>;
      int materialsTotalPrice = 0;
      for (final material in materials) {
        final marketPrice = await getWorldMarketSearchList(material['materials_id']);
        materialsTotalPrice += (int.parse(marketPrice.parseResultMsg()[2]) * (material['amount'] as int));
      }

      dataWithMaterials.add({
        'id': crate['id'],
        'name': crate['name'],
        'materialsTotalPrice': materialsTotalPrice,
        'sale_price': _calculateSellingPrice(crate['original_price']),
        'profit': _calculateSellingPrice(crate['original_price']) - materialsTotalPrice,
      });
    }

    setState(() {
      _tradeCrateData = dataWithMaterials;
      isLoading = false;
      if (_sortStatus == TradeCrateSortStatus.profitDesc) {
        _tradeCrateData.sort((a, b) => b['profit'].compareTo(a['profit']));
      } else if (_sortStatus == TradeCrateSortStatus.profitAsc) {
        _tradeCrateData.sort((a, b) => a['profit'].compareTo(b['profit']));
      } else {
        _tradeCrateData.sort((a, b) => a['id'].compareTo(b['id']));
      }
    });
  }

  void _sortTableData() {
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
    setState(() {});
  }

  int _calculateSellingPrice(int originalPrice) {
    double bargainBonus = 0.05+lifeSkillData.firstWhere((data) => data['name'] == '무역')['lifeSkillLevel'] * 0.005;
    //double desertBonus = 0.5; 분배버프 삭제
    num destanceBonus = CONSTANTS.distanceBonus[selectedOriginRoute]?[selectedDestinationRoute] ?? 0;
    int sellingPrice = ((originalPrice) * ((1+destanceBonus)*(1+bargainBonus))).toInt();
    return sellingPrice;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ?
    const Center(child: CircularProgressIndicator()) :
    Column(
      children: [
        _buildDropdown(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: _buildTable(),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '※ 거래소 가격은 시작가를 기준으로 계산되었습니다.',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }

  Widget _buildTable() {
    return DataTable(
      dataRowHeight: 60.0,
      columns: [
        DataColumn(label: Text('')),
        DataColumn(label: Text('이름')),
        DataColumn(label: Text('거래소 가격')),
        DataColumn(label: Text('판매 가격')),
        DataColumn(
          label: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('수익'),
                if (_sortStatus == TradeCrateSortStatus.profitDesc)
                  Icon(Icons.arrow_drop_up),
                if (_sortStatus == TradeCrateSortStatus.profitAsc)
                  Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          onSort: (columnIndex, ascending) => _sortTableData(),
        ),
      ],
      rows: _tradeCrateData.map(_buildDataRow).toList(),
    );
  }

  DataRow _buildDataRow(data) {
    return DataRow(
      cells: [
        DataCell(
          SizedBox(
            width: 40,
            height: 40,
            child: Center(
              child: Image.network(
                'https://bdocodex.com/items/new_icon/03_etc/07_productmaterial/${data['id'].padLeft(8, '0')}.webp',
              ),
            ),
          ),
        ),
        DataCell(
          Text(data['name']),
        ),
        DataCell(
          Text(data['materialsTotalPrice'].toString()),
        ),
        DataCell(
          Text(data['sale_price'].toString()),
        ),
        DataCell(
          Text(data['profit'].toString()),
        ),
      ],
    );
  }

  Widget _buildDropdown() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildDropdownButton(selectedOriginRoute, CONSTANTS.originRoutes, '원산지', (value) {
            selectedOriginRoute = value!;
          }),
          SizedBox(width: 20),
          _buildDropdownButton(selectedDestinationRoute, CONSTANTS.destinationRoutes, '판매지', (value) {
            selectedDestinationRoute = value!;
          }),
        ]
    );
  }

  Widget _buildDropdownButton(String value, List<String> items, String label, void Function(String?) onChanged) => DropdownButton<String>(
    value: value,
    items: items.map((value) => DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    )).toList(),
    onChanged: (String? value) {
      onChanged(value);
      _getTableData();
    },
  );
}