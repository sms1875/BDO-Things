import 'package:bdo_things/screen/base/base_page.dart';
import 'package:flutter/material.dart';

import 'widgets/trade_crate_calculator_widget.dart';

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