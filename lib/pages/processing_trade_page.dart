import 'package:flutter/material.dart';

import '../constants.dart';
import '../data/processing_trade_data.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/processing_trade_widget.dart';

class ProcessingTradePage extends StatelessWidget {
  const ProcessingTradePage({Key? key}) : super(key: key);
  static const pageTitle = 'Processing Trade Calculator';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: const CustomAppBar(),
      body: ProcessingTradePageBody(),
    );
  }
}

class ProcessingTradePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              ProcessingTradePage.pageTitle,
              style: Constants.pageTitleTextStyle,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: ProcessingTradeWidget(processingTradeData: processingTradeData)
            ),
          ),
        ],
      ),
    );
  }
}