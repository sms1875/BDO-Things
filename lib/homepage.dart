import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'tool_widget.dart';
import 'tool_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: HomePageBody(toolsData: toolsData),
    );
  }
}

class HomePageBody extends StatelessWidget {
  final List<Map<String, String>> toolsData;

  HomePageBody({Key? key, required this.toolsData}) : super(key: key);

  List<Widget> buildToolWidgets(List<Map<String, String>> toolsData) {
    return toolsData
        .map((toolData) => ToolWidget(
      toolName: toolData['name']!,
      toolImage: toolData['image']!,
    ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: buildToolWidgets(toolsData),
        ),
      ),
    );
  }
}
