
import 'package:flutter/material.dart';

class ProcessingTradeWidget extends StatefulWidget {
  final List<Map<String, dynamic>> processingTradeData;

  ProcessingTradeWidget({Key? key, required this.processingTradeData}) : super(key: key);

  @override
  _ProcessingTradeWidgetState createState() => _ProcessingTradeWidgetState();
}

class _ProcessingTradeWidgetState extends State<ProcessingTradeWidget> {
  late List<Map<String, dynamic>> _processingTradeData;
  int _sortColumnIndex=0;
  int _sortStatus = 0;

  @override
  void initState() {
    super.initState();
    _processingTradeData = widget.processingTradeData;
    _sortById();
  }

  void _sortById() {
    setState(() {
      _processingTradeData.sort((a,b) => a['id'].compareTo(b['id']));
      _sortColumnIndex = 1;
      _sortStatus = (_sortStatus +1) %3;
    });

  }

  void _sortByProfit(){
    setState(() {
      if(_sortStatus ==0){
//ascending
        _processingTradeData.sort((a,b) => a['profit'].compareTo(b['profit']));
      }else if(_sortStatus ==1){
//descending
        _processingTradeData.sort((a,b) => b['profit'].compareTo(a['profit']));
      }else{
//default sort by id
        _sortById();
      }
      if(_sortColumnIndex !=3){
//reset sort status when switching column
        _sortStatus =0;
      }else{
//increment sort status when clicking on the same column
        _sortStatus = (_sortStatus +1) %3;
      }

//set sort column index to profit column index (3)
      _sortColumnIndex =3;
    });
  }

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: DataTable(
        columns: [
          DataColumn(label: Text('ID')),
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Selling Price')),
          DataColumn(
            label: Text('Profit'),
            onSort: (columnIndex, ascending) =>
            {_sortByProfit()},
          ),
        ],
        rows:
        _processingTradeData.map((data){
          return DataRow(cells:[
            DataCell(Text(data['id'])),
            DataCell(Text(data['name'])),
            DataCell(Text(data['selling_price'].toString())),
            DataCell(Text(data['profit'].toString())),
          ]);
        }).toList(),
      ),
    );
  }
}