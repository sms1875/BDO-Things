import 'package:flutter/cupertino.dart';

import '../pages/home_page.dart';
import '../pages/processing_trade_page.dart';
import '../pages/test1_page.dart';
import '../pages/test2_page.dart';

Map<String, Widget Function()> pageMap = {
  'processing_trade_page': () => ProcessingTradePage(),
  'page1': () => Test1Page(),
  'page2': () => Test2Page(),
  'default': () => HomePage(),
};