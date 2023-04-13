import 'package:flutter/material.dart';

import 'base_page.dart';
import '../widgets/tools/trade_crate_calculator_widget.dart';

class TradeCrateCalculatorPage extends StatelessWidget {
  const TradeCrateCalculatorPage({Key? key}) : super(key: key);

  static const pageTitle = 'Trade Crate Calculator';

  @override
  Widget build(BuildContext context) {
    return BasePage(
      pageTitle: TradeCrateCalculatorPage.pageTitle,
      body: TradeCrateCalculatorWidget(),
    );
  }
}