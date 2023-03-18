import 'package:flutter/cupertino.dart';
import 'homepage.dart';

List<Map<String, String>> toolsData = [
  {'name': '가공무역 계산기', 'image': 'ProcessingTrade', 'page': 'processing_trade_page'},
  {'name': '예비1', 'image': 'ProcessingTrade', 'page': ''},
  {'name': '예비2', 'image': 'ProcessingTrade', 'page': ''},
  {'name': '예비3', 'image': 'ProcessingTrade', 'page': ''},
  {'name': '예비4', 'image': 'ProcessingTrade', 'page': ''},
  {'name': '예비5', 'image': 'ProcessingTrade', 'page': ''},
  {'name': '예비6', 'image': 'ProcessingTrade', 'page': ''},
];

Map<String, Widget Function()> pageMap = {
  'processing_trade_page': () => HomePage(),
  'page1': () => HomePage(),
  'page2': () => HomePage(),
  'page3': () => HomePage(),
  'default': () => HomePage(),
};