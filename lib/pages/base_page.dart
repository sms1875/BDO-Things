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
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height - AppBar().preferredSize.height - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom,
            minWidth:  MediaQuery.of(context).size.width
          ),
          child: Padding(
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
                body,
              ],
            ),
          ),
        ),
      ),
    );
  }
}