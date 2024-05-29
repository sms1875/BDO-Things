import 'package:bdo_things/data/market_dto.dart';
import 'package:flutter/material.dart';
import 'package:bdo_things/repository/market_wait_list_repository.dart';

class MarketWaitListWidget extends StatelessWidget {
  MarketWaitListWidget({super.key});

  final repository = MarketWaitListRepository();

  List<DataRow> _buildDataRows(List<WaitListItemDTO> marketData) {
    return marketData
        .map((item) => DataRow(cells: [
              DataCell(Text(item.itemId.toString())),
              DataCell(Text(item.enhancementLevel.toString())),
              DataCell(Text(item.price.toString())),
              DataCell(Text(
                  DateTime.fromMillisecondsSinceEpoch(item.timestamp * 1000)
                      .toString())),
            ]))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder<List<WaitListItemDTO>>(
        future: repository.getMarketWaitList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // Show loading indicator while fetching data
          } else if (snapshot.hasError) {
            return Text(
                'Error: ${snapshot.error}'); // Show error message if fetching data fails
          } else {
            List<WaitListItemDTO> marketWaitListData =
                snapshot.data ?? []; // Get fetched data
            return DataTable(columns: [
              DataColumn(label: Text('Item ID')),
              DataColumn(label: Text('Enhancement Level')),
              DataColumn(label: Text('Price')),
              DataColumn(label: Text('Timestamp when item hits the market')),
            ], rows: _buildDataRows(marketWaitListData));
          }
        },
      ),
    );
  }
}
