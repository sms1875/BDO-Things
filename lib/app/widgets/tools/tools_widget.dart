import 'package:flutter/material.dart';

import '../../../data/constants.dart';
import 'trade_crate_calculator_widget.dart';

class ToolsWidget extends StatefulWidget {
  const ToolsWidget({
    Key? key,
    required this.toolData,
  }) : super(key: key);

  final List<Map<String, String>> toolData;

  @override
  _ToolsWidgetState createState() => _ToolsWidgetState();
}

class _ToolsWidgetState extends State<ToolsWidget> {
  Widget _currentWidget = SizedBox();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: _buildToolWidgetList(context),
        ),
        SizedBox(height: 16.0),
        _currentWidget,
      ],
    );
  }

  List<Widget> _buildToolWidgetList(BuildContext context) {
    return widget.toolData
        .map((data) => ToolItem(data: data, onTap: () => _onToolItemTap(data)))
        .toList();
  }

  void _onToolItemTap(Map<String, String> data) {
    switch (data['page']) {
      case 'Trade_crate':
        setState(() {
          _currentWidget = TradeCrateCalculatorWidget();
        });
        break;
      case 'Test1':
      setState(() {
        _currentWidget = Container(
          color: Colors.white,
          width: 560,
          height: 600,
          child: Text('test1'),
        );
      });
        break;
      case 'Test2':
      setState(() {
        _currentWidget = Container(
          color: Colors.white,
          width: 560,
          height: 600,
          child: Text('test2'),
        );
      });
        break;
      default:
        setState(() {
          _currentWidget = SizedBox();
        });
    }
  }
}

class ToolItem extends StatelessWidget {
  const ToolItem({
    Key? key,
    required this.data,
    required this.onTap,
  }) : super(key: key);

  final Map<String, String> data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 350,
        height: 80,
        padding: const EdgeInsets.all(10.0),
        color: Constants.widgetBackgroundColor,
        child: Row(
          children: [
            _buildToolImage(data['image']),
            const SizedBox(width: 16.0),
            Expanded(
              child: Text(
                data['name']!,
                textAlign: TextAlign.left,
                style: Constants.widgetTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToolImage(String? imageName) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage('images/$imageName.png'),
        //   fit: BoxFit.fitWidth,
        // ),
      ),
    );
  }
}

List<Map<String, String>> toolData = [
  {'name': '가공무역 계산기', 'image': 'tradeCrate', 'page': 'Trade_crate'},
  {'name': '예비1', 'image': 'tradeCrate', 'page': 'Test1'},
  {'name': '예비2', 'image': 'tradeCrate', 'page': 'Test2'},
];