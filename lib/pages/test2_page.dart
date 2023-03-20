import 'package:flutter/material.dart';
import 'package:bdo_things/constants.dart';
import '../widgets/custom_app_bar.dart';

class Test2Page extends StatelessWidget {
  static const pageTitle = 'Test2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: CustomAppBar(),
      body: ProcessingTradePageBody(),
    );
  }
}

class ProcessingTradePageBody extends StatelessWidget {
  const ProcessingTradePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              Test2Page.pageTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text('test2'),
          ),
        ],
      ),
    );
  }
}