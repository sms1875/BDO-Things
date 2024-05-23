import 'package:bdo_things/constants.dart';
import 'package:bdo_things/provider/design_calculate_provider.dart';
import 'package:bdo_things/repository/design_repository.dart';
import 'package:bdo_things/types/bdolyticsDTO.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CrateCalculateWidget extends StatefulWidget {
  CrateCalculateWidget({super.key});

  @override
  _CrateCalculateWidgetState createState() => _CrateCalculateWidgetState();
}

class _CrateCalculateWidgetState extends State<CrateCalculateWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DesignCalculateProvider>(
          builder: (context, provider, child) {
            return provider.isLoading
                ? Center(child: CircularProgressIndicator())
                : Column(
              children: [
                DropdownWidget(
                  provider.originRoute,
                  CONSTANTS.originRoutes,
                  '원산지',
                      (value) {
                    provider.setOriginRoute(value!);
                  },
                ),
                SizedBox(width: 20),
                DropdownWidget(
                  provider.destinationRoute,
                  CONSTANTS.destinationRoutes,
                  '판매지',
                      (value) {
                    provider.setDestinationRoute(value!);
                  },
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: TableWidget(
                    provider.crateData,
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
}


class DropdownWidget extends StatelessWidget {
  final String value;
  final List<String> items;
  final String label;
  final void Function(String?) onChanged;

  DropdownWidget(this.value, this.items, this.label, this.onChanged);

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
      ],
    );
  }
}

class TableWidget extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  final CrateSortStatus sortStatus;
  final void Function() onSort;

  TableWidget(this.data, this.sortStatus, this.onSort);

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
                if (sortStatus == CrateSortStatus.profitDesc)
                  Icon(Icons.arrow_drop_up),
                if (sortStatus == CrateSortStatus.profitAsc)
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
      rows: data.map((data) => DataRow(cells: _buildDataCells(data))).toList(),
    );
  }

  List<DataCell> _buildDataCells(Map<String, dynamic> data) {
    return [
      DataCell(
        Container(
          width: 40,
          height: 40,
          // 이미지를 여기에 넣습니다.
        ),
      ),
      DataCell(Text(data['name'])),
      DataCell(Text(data['materialsTotalPrice'].toString())),
      DataCell(Text(data['sale_price'].toString())),
      DataCell(Text(data['profit'].toString())),
      DataCell(Text(data['profit_per'].toString())),
    ];
  }
}