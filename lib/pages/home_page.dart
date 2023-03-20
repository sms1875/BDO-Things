import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/custom_app_bar.dart';
import '../data/tool_data.dart';
import '../widgets/tool_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const pageTitle = 'Tools';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: const CustomAppBar(),
      body: const HomePageBody(),
    );
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              HomePage.pageTitle ,
              style: Constants.pageTitleTextStyle,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: ToolWidget(toolData: toolData),
            ),
          ),
        ],
      ),
    );
  }
}
