import 'package:bdo_things/presentation/pages/home_page.dart';
import 'package:bdo_things/presentation/pages/setting_page.dart';
import 'package:bdo_things/presentation/pages/tools_page.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> routes(BuildContext context) {
  return {
    '/': (_) => const HomePage(),
    '': (_) => const HomePage(),
    'Home': (_) => const HomePage(),
    'Tools': (_) => const ToolsPage(),
    'Setting': (_) => const SettingPage(),
    //'Trade_crate': (_) => const TradeCrateCalculatorPage(),
  };
}