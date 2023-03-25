import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/page_map.dart';

class ToolWidget extends StatelessWidget {
  const ToolWidget({
    Key? key,
    required this.toolData,
  }) : super(key: key);

  final List<Map<String, String>> toolData;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.0,
      runSpacing: 16.0,
      children: _buildToolList(context),
    );
  }

  List<Widget> _buildToolList(BuildContext context) {
    return toolData.map((data) {
      final tool = toolData.firstWhere((t) => t['name'] == data['name']!,
          orElse: () => {'page': ''});
      final page = getPage(tool['page']);
      return InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
        child: _buildToolItem(data),
      );
    }).toList();
  }

  Widget _buildToolItem(Map<String, String> data) {
    return Container(
      width: 350,
      height: 80,
      padding: const EdgeInsets.all(10.0),
      color : Constants.widgetBackgroundColor,
      child: Row(
        children: [
          _buildToolImage(data['image']),
          const SizedBox(width: 16.0),
          Expanded(
            child: Text(
              data['name']!,
              textAlign: TextAlign.left,
              style: Constants.widgetTextStyle
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildToolImage(String? imageName) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(/*
        image: DecorationImage(
          image: AssetImage('images/$imageName.png'),
          fit: BoxFit.fitWidth,
        ),*/
      ),
    );
  }

  Widget getPage(String? pageName) {
    return pageMap[pageName]?.call() ?? pageMap['default']!.call();
  }
}