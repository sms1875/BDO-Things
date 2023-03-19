import 'package:flutter/material.dart';
import 'package:bdo_things/tool_data.dart';
import 'custom_app_bar.dart';

class ProcessingTradePage extends StatelessWidget {
  static const backgroundColor = Color.fromRGBO(40, 40, 40, 1);
  static const pageTitle = 'Processing Trade Calculator';

  static Color getRowBackgroundColor(bool isHeader) {
    return isHeader ? backgroundColor : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ProcessingTradePage.pageTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Sora',
                  fontSize: 24,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      _buildTableRow(['', '가공품', '재료','거래소 가격','판매 가격','이익',], isHeader: true),
                      ...processingTradeCalData.map((data) => _buildTableRow([data['image']!,
                        data['product']!,
                        data['material']!,
                        data['exchangePrice']!,
                        data['sellingPrice']!,
                        data['profit']!,
                      ])).toList(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static TableRow _buildTableRow(List<String> items, {bool isHeader = false}) {
    final backgroundColor = ProcessingTradePage.getRowBackgroundColor(isHeader);
    return TableRow(
      decoration: BoxDecoration(color: backgroundColor),
      children: items
          .map((item) => TableCell(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(item, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      ))
          .toList(),
    );
  }
}