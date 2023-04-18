import 'package:flutter/material.dart';

final Map<String, Map<String, dynamic>> itemInfo = {
  '고대 유적의 결정': {'price': '1000', 'drop': {'기억의파편': 3, '블랙스톤': 5}, 'expected': '100'},
  '고어로 적힌 두루마리': {'price': '1200', 'drop': {'기억의파편': 6, '블랙스톤': 5}, 'expected': '200'},
  '나크': {'price': '1200', 'drop': {'포션재료': 0.1, '블랙스톤': 5}, 'expected': '200'},
};

class ScrollCalculatorWidget extends StatelessWidget {
  const ScrollCalculatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1200,
      height: 600,
      child: SingleChildScrollView(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            _buildTableRow('소환서 종류', '거래소 가격', '드롭 아이템', '기대 수익',
                backgroundColor: Colors.grey[300]),
            for (final entry in itemInfo.entries)
              _buildTableRow(entry.key, entry.value['price'], _formatDropItems(entry.value['drop']), entry.value['expected'],
                  backgroundColor: Colors.yellow[100]),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String text1, String text2, String text3, String text4,
      {Color? backgroundColor}) {
    return TableRow(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
          bottom: Radius.circular(20),
        ),
      ),
      children: [
        _buildTableCell(text1),
        _buildTableCell(text2),
        _buildTableCell(text3),
        _buildTableCell(text4),
      ],
    );
  }

  Widget _buildTableCell(String text) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  String _formatDropItems(Map<String, dynamic> dropItems) {
    final List<String> formattedItems = [];
    for (final entry in dropItems.entries) {
      formattedItems.add('${entry.key}x${entry.value}');
    }
    return formattedItems.join(', ');
  }
}