import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

List<Map<String, dynamic>> marketData = [
  {
    'Item ID': 11653,
    'Enhancement Level': 4,
    'Price': '79000000000',
    'Timestamp when item hits the market': '2024-02-16T10:28:08.000Z'
  },
  {
    'Item ID': 11875,
    'Enhancement Level': 4,
    'Price': '22100000000',
    'Timestamp when item hits the market': '2024-02-16T10:29:26.000Z'
  },
  // Add more data as needed
];

class MarketWaitListWidget extends StatelessWidget {
  const MarketWaitListWidget({Key? key}) : super(key: key);

  Future<List<Map<String, dynamic>>> fetchMarketWaitList() async {
    try {
      final response = await http.get(Uri.parse('http://localhost:3000/getMarketWaitList'));
      if (response.statusCode == 200) {
        List<Map<String, dynamic>> data = jsonDecode(response.body)['data'];
        return data;
      } else {
        print('Failed to load market wait list: ${response.statusCode}');
        return []; // Return empty list if request fails
      }
    } catch (e) {
      print('Failed to load market wait list: $e');
      return marketData; // Return empty list if an exception occurs
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder<List<Map<String, dynamic>>>(
        future: fetchMarketWaitList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // Show loading indicator while fetching data
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}'); // Show error message if fetching data fails
          } else {
            List<Map<String, dynamic>> marketWaitListData = snapshot.data ?? marketData; // Get fetched data
            return DataTable(
              columns: [
                DataColumn(label: Text('Item ID')),
                DataColumn(label: Text('Enhancement Level')),
                DataColumn(label: Text('Price')),
                DataColumn(label: Text('Timestamp when item hits the market')),
              ],
              rows: marketWaitListData
                  .map((item) => DataRow(cells: [
                DataCell(Text(item['Item ID'].toString())),
                DataCell(Text(item['Enhancement Level'].toString())),
                DataCell(Text(item['Price'].toString())),
                DataCell(Text(item['Timestamp when item hits the market'].toString())),
              ]))
                  .toList(),
            );
          }
        },
      ),
    );
  }
}