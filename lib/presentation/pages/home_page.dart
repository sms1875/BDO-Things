import 'package:bdo_things/presentation/base/base_page.dart';
import 'package:bdo_things/presentation/widgets/home/home_widget.dart';
import 'package:flutter/material.dart';



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