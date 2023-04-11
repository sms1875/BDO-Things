import 'package:flutter/material.dart';
import 'package:bdo_things/pages/tools_page.dart';
import 'package:bdo_things/pages/setting_page.dart';

import '../pages/test1_page.dart';
import '../pages/test2_page.dart';
import '../pages/trade_crate_calculator_page.dart';

Map<String, Widget Function(BuildContext)> routes(BuildContext context) {
  return {
    '/': (_) => const ToolsPage(),
    '': (_) => const ToolsPage(),
    'Home': (_) => const ToolsPage(),
    'Tools': (_) => const ToolsPage(),
    'Setting': (_) => const SettingPage(),
    'Trade_crate': (_) => const TradeCrateCalculatorPage(),
    'Test1': (_) => const Test1Page(),
    'Test2': (_) => Test2Page(),
  };
}