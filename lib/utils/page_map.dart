import 'package:flutter/cupertino.dart';

import '../pages/home_page.dart';
import '../pages/trade_crate_calculator_page.dart';
import '../pages/test1_page.dart';
import '../pages/test2_page.dart';

Map<String, Widget Function()> pageMap = {
  'trade_crate_page': () => TradeCrateCalculatorPage(),
  'page1': () => Test1Page(),
  'page2': () => Test2Page(),
  'default': () => HomePage(),
};