import 'package:flutter/material.dart';

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
      decoration: BoxDecoration(
        color: const Color.fromRGBO(60, 60, 60, 1),
      ),
      child: Row(
        children: [
          _buildToolImage(data['image']),
          const SizedBox(width: 16.0),
          Expanded(
            child: Text(
              data['name']!,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
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