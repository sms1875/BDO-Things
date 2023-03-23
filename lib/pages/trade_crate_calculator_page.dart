import 'package:flutter/material.dart';

import 'base_page.dart';
import '../widgets/trade_crate_calculator_widget.dart';
import '../data/trade_crate__calculator_data.dart';

class TradeCrateCalculatorPage extends StatelessWidget {
  const TradeCrateCalculatorPage({Key? key}) : super(key: key);

  static const pageTitle = 'Trade Crate Calculator';

  @override
  Widget build(BuildContext context) {
    return BasePage(
      pageTitle: TradeCrateCalculatorPage.pageTitle,
      body: TradeCrateCalculatorWidget(tradeCrateData: tradeCrateData),
    );
  }
}