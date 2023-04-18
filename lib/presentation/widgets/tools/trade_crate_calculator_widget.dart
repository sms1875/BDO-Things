import 'package:bdo_things/presentation/controllers/tools/trade_crate_calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:bdo_things/data/constants.dart';
import 'package:provider/provider.dart';

class TradeCrateCalculatorWidget extends StatefulWidget {
  TradeCrateCalculatorWidget({Key? key}) : super(key: key);

  @override
  _TradeCrateCalculatorWidgetState createState() => _TradeCrateCalculatorWidgetState();
}

class _TradeCrateCalculatorWidgetState extends State<TradeCrateCalculatorWidget> {
  final TradeCrateController _controller = TradeCrateController.instance;

  @override
  void initState() {
    super.initState();
    _controller.loadTableData(); // 데이터를 불러옵니다.
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _controller,
      child: Consumer<TradeCrateController>(
        builder: (context, controller, child) {
          return Column(
            children: [
              DropdownWidget(
                value: _controller.originRoute,
                items: CONSTANTS.originRoutes,
                label: '원산지',
                onChanged: (value) {
                  setState(() {
                    _controller.setOriginRoute(value!);
                    _controller.loadTableData();
                  });
                },
              ),
              SizedBox(width: 20),
              DropdownWidget(
                value: _controller.destinationRoute,
                items: CONSTANTS.destinationRoutes,
                label: '판매지',
                onChanged: (value) {
                  setState(() {
                    _controller.setDestinationRoute(value!);
                    _controller.loadTableData();
                  });
                },
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: TableWidget(
                  data: _controller.tradeCrateData,
                  sortStatus: _controller.sortStatus,
                  onSort: _controller.sortTableData,
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
      ),
    );
  }
}

class DropdownWidget extends StatelessWidget {
  final String value;
  final List<String> items;
  final String label;
  final void Function(String?) onChanged;

  const DropdownWidget({
    Key? key,
    required this.value,
    required this.items,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class TableWidget extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  final TradeCrateSortStatus sortStatus;
  final void Function() onSort;

  const TableWidget({
    Key? key,
    required this.data,
    required this.sortStatus,
    required this.onSort,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      ],
      rows: data.map(_buildDataRow).toList(),
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
                child: SizedBox()
              //Image.network('https://bdocodex.com/items/new_icon/03_etc/07_productmaterial/${data['id'].padLeft(8, '0')}.webp',),
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
}