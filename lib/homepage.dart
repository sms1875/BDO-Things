import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'tool_widget.dart';
import 'tool_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 1),
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 20, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Tools',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 16.0,
                  runSpacing: 16.0,
                  children: buildToolWidgets(toolsData),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
