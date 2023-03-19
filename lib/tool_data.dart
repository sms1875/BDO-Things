import 'package:bdo_things/processing_trade_page.dart';
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
  {'name': '예비1', 'image': 'ProcessingTrade', 'page': ''},
  {'name': '예비2', 'image': 'ProcessingTrade', 'page': ''},
  {'name': '예비3', 'image': 'ProcessingTrade', 'page': ''},
  {'name': '예비4', 'image': 'ProcessingTrade', 'page': ''},
  {'name': '예비5', 'image': 'ProcessingTrade', 'page': ''},
  {'name': '예비6', 'image': 'ProcessingTrade', 'page': ''},
];

Map<String, Widget Function()> pageMap = {
  'processing_trade_page': () => ProcessingTradePage(),
  'page1': () => HomePage(),
  'page2': () => HomePage(),
  'page3': () => HomePage(),
  'default': () => HomePage(),
};

List<Map<String, String>> processingTradeCalData = [
  {'image': '1', 'product': '상품 1', 'material': '소나무 원목', 'exchangePrice': '1000', 'sellingPrice': '1200', 'profit': '200'},
  {'image': '2', 'product': '상품 1', 'material': '단풍나무 원목', 'exchangePrice': '1500', 'sellingPrice': '1700', 'profit': '200'},
];