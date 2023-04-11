import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ToolsWidget extends StatelessWidget {
  const ToolsWidget({
    Key? key,
    required this.toolData,
  }) : super(key: key);

  final List<Map<String, String>> toolData;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.0,
      runSpacing: 16.0,
      children: _buildToolWidgetList(context),
    );
  }

  List<Widget> _buildToolWidgetList(BuildContext context) {
    return toolData.map((data) => ToolItem(data: data, toolData: toolData)).toList();
  }
}

class ToolItem extends StatelessWidget {
  const ToolItem({Key? key, required this.data, required this.toolData,}) : super(key: key);

  final Map<String, String> data;
  final List<Map<String, String>> toolData;

  @override
  Widget build(BuildContext context) {
    final tool = toolData.firstWhere((t) => t['name'] == data['name']!,
      orElse: () => {'page': ''},
    );

    return InkWell(
      onTap: () => Navigator.pushNamed(context, tool['page']!),
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