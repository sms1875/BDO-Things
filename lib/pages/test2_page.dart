import 'package:flutter/material.dart';
import 'package:bdo_things/utils/constants.dart';
import '../widgets/base/custom_app_bar.dart';
import 'base_page.dart';

class Test2Page extends StatelessWidget {
  static const pageTitle = 'Test2';

  const Test2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Test2PageBody();
  }
}

class Test2PageBody extends StatelessWidget {
  const Test2PageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      pageTitle: Test2Page.pageTitle,
      body: Text('Test2'),
    );
  }
}