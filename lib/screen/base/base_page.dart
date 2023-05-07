import 'package:flutter/material.dart';

import 'package:bdo_things/constants.dart';
import 'custom_app_bar.dart';
import 'custom_navigation_rail.dart';

class BasePage extends StatefulWidget {
  final String pageTitle;
  final Widget body;
  const BasePage({Key? key, required this.pageTitle, required this.body,}) : super(key: key);

  @override
  State<BasePage> createState() => BasePageState();
}

class BasePageState extends State<BasePage> {
  String get pageTitle => widget.pageTitle;
  Widget get pageBody => widget.body;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = (MediaQuery.of(context).size.width >= 1200);

    return Scaffold(
      backgroundColor: CONSTANTS.BACKGROUNDCOLOR,
      appBar: const CustomAppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Row(
            children: <Widget>[
              isDesktop ? const CustomNavigationRail():SizedBox()  ,
              const VerticalDivider(thickness: 1, width: 1),
              Expanded(
                  child:ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          pageTitle,
                          style: CONSTANTS.pageTitleTextStyle,
                        ),
                      ),
                      pageBody,
                    ],
                  )
              ),
            ],
          );
        },
      ),
    );
  }
}