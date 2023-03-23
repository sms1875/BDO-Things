import 'package:flutter/material.dart';

import '../data/trade_crate__calculator_data.dart';
import '../get_world_market_search_list_api.dart';
import '../utils/constants.dart';

class TradeCrateCalculatorWidget extends StatefulWidget {
  final List<Map<String, dynamic>> tradeCrateData;

  TradeCrateCalculatorWidget({Key? key, required this.tradeCrateData}) : super(key: key);

  @override
  _TradeCrateCalculatorWidgetState createState() => _TradeCrateCalculatorWidgetState();
}

class _TradeCrateCalculatorWidgetState extends State<TradeCrateCalculatorWidget> {
  late List<Map<String, dynamic>> _tradeCrateData;
  int _sortStatus = -1;
  late String selectedOrigin;
  late String selectedDestination;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    selectedOrigin = Constants.originItems.first;
    selectedDestination = Constants.destinationItems.first;
    _tradeCrateData = widget.tradeCrateData;
    _getTableData();
    _sortTableData();
  }

  Future<void> _getTableData() async {
    final dataWithMaterials = <Map<String, dynamic>>[];
    for (final crate in tradeCrateData) {
      final materials = crate['materials'] as List<dynamic>;
      int materialsTotalPrice = 0;
      for (final material in materials) {
        final marketPrice = await getWorldMarketSearchList(material['materials_id']);
        materialsTotalPrice +=
        (int.parse(marketPrice.parseResultMsg()[2]) * (material['amount'] as int));
      }

      dataWithMaterials.add({
        'id': crate['id'],
        'name': crate['name'],
        'materialsTotalPrice': materialsTotalPrice,
        'sale_price': calculateSellingPrice(crate['original_price']),
        'profit': calculateSellingPrice(crate['original_price']) - materialsTotalPrice,
      });
    }
    setState(() {
      _tradeCrateData = dataWithMaterials;
      isLoading = false;
      print(_tradeCrateData);

        switch (_sortStatus) {
        case 1:
          _tradeCrateData.sort((a, b) => b['profit'].compareTo(a['profit']));
          break;
        case 2:
          _tradeCrateData.sort((a, b) => a['profit'].compareTo(b['profit']));
          break;
        default:
          _tradeCrateData.sort((a,b) => a['id'].compareTo(b['id']));
      }

    });
  }

  void _sortTableData() {
    switch (_sortStatus) {
      case 0:
        _tradeCrateData.sort((a, b) => b['profit'].compareTo(a['profit']));
        _sortStatus = 1;
        break;
      case 1:
        _tradeCrateData.sort((a, b) => a['profit'].compareTo(b['profit']));
        _sortStatus = 2;
        break;
      default:
        _tradeCrateData.sort((a,b) => a['id'].compareTo(b['id']));
        _sortStatus = (_sortStatus +1) %3;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          children: [
            isLoading
                ? const Center(child: CircularProgressIndicator())
                : Column(
              children: [
                _buildDropdown(),
                DataTable(
                  dataRowHeight: 60.0,
                  columns: [
                    DataColumn(label: Text('')),
                    DataColumn(label: Text('name')),
                    DataColumn(label: Text('exchange price')),
                    DataColumn(label: Text('sale price')),
                    DataColumn(
                      label: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Revenue'),
                            if (_sortStatus == 1)
                              Icon(Icons.arrow_drop_up),
                            if (_sortStatus == 2)
                              Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                      onSort: (int? columnIndex, bool? ascending) =>
                          _sortTableData(),
                    )
                  ],
                  rows: _tradeCrateData
                      .map((data) => DataRow(cells: [
                    DataCell(
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Center(
                          child: Image.network(
                            'https://bdocodex.com/items/new_icon/03_etc/07_productmaterial/${data['id'].padLeft(8, '0')}.webp',
                          ),
                          /*Image(
                                      image: AssetImage(
                                          'images/items/${data['id']}.webp'),
                                    ),*/
                        ),
                      ),
                    ),
                    DataCell(Text(data['name'])),
                    DataCell(
                        Text(data['materialsTotalPrice'].toString())),
                    DataCell(Text(data['sale_price'].toString())),
                    DataCell(Text(data['profit'].toString())),
                  ]))
                      .toList(),
                ),
              ],
            ),
          ],
        )
    );
  }

  Widget _buildDropdown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildDropdownButton(selectedOrigin, Constants.originItems, '원산지', (value) {
          selectedOrigin = value!;
        }),
        SizedBox(width: 20),
        _buildDropdownButton(selectedDestination, Constants.destinationItems, '판매지', (value) {
          selectedDestination = value!;
        }),
      ],
    );
  }

  Widget _buildDropdownButton(String value, List<String> items, String label, void Function(String?) onChanged) {
    return DropdownButton<String>(
      value: value,
      items: items
          .map<DropdownMenuItem<String>>((String value) => DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      ))
          .toList(),
      onChanged: (String? value) {
        onChanged(value);
        _getTableData(); // sale_price 갱신, _tradeCrateData 업데이트
      },
    );
  }

  int calculateSellingPrice(int originalPrice) {
    double bargainBonus=1.35;//0.05+무역레벨
    double desertBonus=1.5;
    final destanceBonus =
        Constants.distanceBonus[selectedOrigin]?[selectedDestination] ?? 1;
    int result = (originalPrice * (destanceBonus*desertBonus*bargainBonus)).toInt();
    return result;
  }
}