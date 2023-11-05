import 'package:flutter/material.dart';

abstract class BaseWidget extends StatelessWidget {
  const BaseWidget({Key? key}) : super(key: key);

  Widget banner(String text, double height, double width) => Container(
    color: Colors.white,
    height: height,
    width: width,
    child: Text(text),
  );

  Widget buildLeftWidget();

  Widget buildCenterWidget();

  Widget buildRightWidget();

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = (MediaQuery.of(context).size.width >= 800);

    Widget leftWidget = buildLeftWidget();
    Widget centerWidget = buildCenterWidget();
    Widget rightWidget = buildRightWidget();

    if (!isDesktop) {
      return Column(
        children: [
          centerWidget,
          leftWidget,
          rightWidget,
        ],
      );
    } else {
      return Wrap(
        spacing: 10.0,
        runSpacing: 10.0,
        alignment: WrapAlignment.center,
        children: [
          leftWidget,
          centerWidget,
          rightWidget,
        ],
      );
    }
  }
}