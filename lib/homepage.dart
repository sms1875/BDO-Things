import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'tool_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: HomePageBody(),
    );
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  List<Widget> buildToolWidgets() {
    return [
      ToolWidget( toolName: '가공무역 계산기', toolImage: 'ProcessingTrade'),
      ToolWidget( toolName: '예비1', toolImage: 'ProcessingTrade' ),
      ToolWidget( toolName: '예비2', toolImage: 'ProcessingTrade' ),
      ToolWidget( toolName: '예비3', toolImage: 'ProcessingTrade' ),
      ToolWidget( toolName: '예비4', toolImage: 'ProcessingTrade' ),
      ToolWidget( toolName: '예비5', toolImage: 'ProcessingTrade' ),
      ToolWidget( toolName: '예비6', toolImage: 'ProcessingTrade' ),
    ];
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
          children: buildToolWidgets(),
        ),
      ),
    );
  }
}
