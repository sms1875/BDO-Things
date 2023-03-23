import 'dart:convert';

import 'package:flutter/material.dart';

import '../data/trade_crate__calculator_data.dart';
import '../get_world_market_search_list_api.dart';


class Test1Page extends StatefulWidget {
  const Test1Page({Key? key}) : super(key: key);

  @override
  State<Test1Page> createState() => _Test1PageState();
}

class _Test1PageState extends State<Test1Page> {
  late List<Map<String, dynamic>> _tradeCrateDate;

  @override
  void initState() {
    super.initState();
    _tradeCrateDate= tradeCrateData;
    _getTableData();
  }

  Future<void> _getTableData() async {
    final dataWithMaterials = <Map<String, dynamic>>[];
    for (final crate in tradeCrateData) {
      final materials = crate['materials'] as List<dynamic>;
      int materialsValue = 0;
      for (final material in materials) {
        final marketPrice = await getWorldMarketSearchList(material['materials_id']);
        materialsValue += (int.parse(marketPrice.parseResultMsg()[2]) * (material['amount'] as int));
      }
      dataWithMaterials.add({
        'id': crate['id'],
        'name': crate['name'],
        'materials': materialsValue,
        'original_price': crate['original_price'],
        'profit': crate['original_price'] - materialsValue,
      });
    }
    setState(() {
      _tradeCrateDate = dataWithMaterials;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trade Crate Table'),
      ),
      body: _tradeCrateDate == null
          ? const Center(child: CircularProgressIndicator())
          : DataTable(
        columns: const [
          DataColumn(label: Text('ID')),
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Materials')),
          DataColumn(label: Text('Original Price')),
          DataColumn(label: Text('Profit')),
        ],
        rows: _tradeCrateDate
            .map((data) => DataRow(cells: [
          DataCell(Text(data['id'])),
          DataCell(Text(data['name'])),
          DataCell(Text(data['materials'].toString())),
          DataCell(Text(data['original_price'].toString())),
          DataCell(Text(data['profit'].toString())),
        ]))
            .toList(),
      ),
    );
  }
}