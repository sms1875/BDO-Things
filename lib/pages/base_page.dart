import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widgets/custom_app_bar.dart';

class BasePage extends StatelessWidget {
  final String pageTitle;
  final Widget body;

  const BasePage({Key? key, required this.pageTitle, required this.body,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: const CustomAppBar(),
      body: Padding(
        padding: Constants.pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                pageTitle,
                style: Constants.pageTitleTextStyle,
              ),
            ),
            Expanded(
                child: body
            ),
          ],
        ),
      ),
    );
  }
}