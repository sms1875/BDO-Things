import 'package:flutter/material.dart';

import 'base_page.dart';
import '../data/tool_data.dart';
import '../widgets/tool_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const pageTitle = 'Tools';

  @override
  Widget build(BuildContext context) {
    return BasePage(
      pageTitle: HomePage.pageTitle,
      body: ToolWidget(toolData: toolData),
    );
  }
}