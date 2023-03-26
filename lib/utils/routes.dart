import 'package:flutter/material.dart';
import 'package:bdo_things/pages/home_page.dart';
import 'package:bdo_things/pages/setting_page.dart';

import '../pages/test1_page.dart';
import '../pages/test2_page.dart';
import '../pages/trade_crate_calculator_page.dart';

Map<String, Widget Function(BuildContext)> routes(BuildContext context) {
  return {
    '/home_page': (_) => const HomePage(),
    '/setting_page': (_) => const SettingPage(),
    'trade_crate_page': (_) => const TradeCrateCalculatorPage(),
    'page1': (_) => const Test1Page(),
    'page2': (_) => Test2Page(),
  };
}