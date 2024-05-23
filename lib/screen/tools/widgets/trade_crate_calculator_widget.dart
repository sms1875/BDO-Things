import 'package:bdo_things/provider/trade_crate_calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:bdo_things/constants.dart';
import 'package:provider/provider.dart';

class TradeCrateCalculatorWidget extends StatefulWidget {
  TradeCrateCalculatorWidget({Key? key}) : super(key: key);

  @override
  _TradeCrateCalculatorWidgetState createState() => _TradeCrateCalculatorWidgetState();
}

class _TradeCrateCalculatorWidgetState extends State<TradeCrateCalculatorWidget> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TradeCrateCalculatorProvider>(
      builder: (context, provider, child) {
        provider.calculateSellingPriceAndProfit();
        return provider.isLoading?
        CircularProgressIndicator() :
        Column(
          children: [
            DropdownWidget(
              provider.originRoute,
              CONSTANTS.originRoutes,
              '원산지',
                  (value) {
                setState(() {
                  provider.setOriginRoute(value!);
                });
              },
            ),
            SizedBox(width: 20),
            DropdownWidget(
              provider.destinationRoute,
              CONSTANTS.destinationRoutes,
              '판매지',
                  (value) {
                setState(() {
                  provider.setDestinationRoute(value!);
                });
              },
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: TableWidget(
                provider.tradeCrateData,
                provider.sortStatus,
                provider.changeSortStatus,
              ),
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
      },
    );
  }

  Widget DropdownWidget(String value, List<String> items, String label, void Function(String?) onChanged) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label),
          DropdownButton<String>(
            value: value,
            items: items.map((value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            )).toList(),
            onChanged: onChanged,
          ),
        ]
    );
  }

  Widget TableWidget (List<Map<String, dynamic>> data, TradeCrateSortStatus sortStatus, void Function() onSort,) {
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
                if (sortStatus == TradeCrateSortStatus.profitDesc)
                  Icon(Icons.arrow_drop_up),
                if (sortStatus == TradeCrateSortStatus.profitAsc)
                  Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          onSort: (columnIndex, ascending) => onSort(),
        ),
        DataColumn(
          label: Text('1개당 수익'),
        ),
      ],
      rows: data.map(_buildDataRow).toList(),
    );
  }

  DataRow _buildDataRow(data) {
    return DataRow(
      cells: [
        DataCell(
          Container(
            width: 40,
            height: 40,
            /*
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/icon/design_crate/${data['id']}.webp'),
                fit: BoxFit.fitWidth,
              ),
            ),
            */
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
        DataCell(
          Text(data['profit_per'].toString()),
        ),
      ],
    );
  }
}