import 'package:bdo_things/screen/widgets/tools/scroll_calculator_widget.dart';
import 'package:flutter/material.dart';

import 'package:bdo_things/constants.dart';
import 'trade_crate_calculator_widget.dart';

List<Map<String, String>> toolData = [
  {'name': '가공무역 계산기', 'image': 'tradeCrate', 'page': 'Trade_crate'},
  {'name': '소환서 계산기', 'image': '고유결이미지', 'page': 'Scroll_calculator'},
  {'name': '예비2', 'image': 'tradeCrate', 'page': 'Test2'},
];

class ToolsWidget extends StatefulWidget {
  const ToolsWidget({
    Key? key,
  }) : super(key: key);


  @override
  _ToolsWidgetState createState() => _ToolsWidgetState();
}

class _ToolsWidgetState extends State<ToolsWidget> {
  final List<Map<String, String>> _toolData = toolData;
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
    return _toolData
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
      case 'Scroll_calculator':
        setState(() {
          _currentWidget = ScrollCalculatorWidget();
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
        color: CONSTANTS.WIDGET_BACKGROUND_COLOR,
        child: Row(
          children: [
            _buildToolImage(data['image']),
            const SizedBox(width: 16.0),
            Expanded(
              child: Text(
                data['name']!,
                textAlign: TextAlign.left,
                style: CONSTANTS.widgetTextStyle,
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
