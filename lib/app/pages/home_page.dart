import 'package:flutter/material.dart';

import '../widgets/home/home_widget.dart';
import 'base_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const pageTitle = 'Home';

  @override
  Widget build(BuildContext context) {
    return BasePage(
      pageTitle: HomePage.pageTitle,
      body: HomeWidget(),
    );
  }
}