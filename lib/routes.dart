import 'package:flutter/cupertino.dart';

import 'app/pages/home_page.dart';
import 'app/pages/setting_page.dart';
import 'app/pages/tools_page.dart';

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