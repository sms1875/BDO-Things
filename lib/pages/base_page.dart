import 'package:bdo_things/widgets/base/custom_navigation_rail.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widgets/base/custom_app_bar.dart';

class BasePage extends StatefulWidget {
  final String pageTitle;
  final Widget body;
  const BasePage({Key? key, required this.pageTitle, required this.body,}) : super(key: key);

  @override
  State<BasePage> createState() => BasePageState();
}

class BasePageState extends State<BasePage> {
  String get pageTitle => widget.pageTitle;
  Widget get body => widget.body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: const CustomAppBar(),
      body: Row(
        children: <Widget>[
          CustomNavigationRail(),
          Divider(thickness: 1, height: 1),
          // This is the main content.
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        pageTitle,
                        style: Constants.pageTitleTextStyle,
                      ),
                    ),
                    body,
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}