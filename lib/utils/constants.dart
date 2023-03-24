import 'package:flutter/material.dart';

class Constants {
  static const backgroundColor = Color.fromRGBO(40, 40, 40, 1);
  static const pagePadding = EdgeInsets.symmetric(horizontal: 20, vertical: 10);

  static const TextStyle pageTitleTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 24,
    letterSpacing: 1,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle tableTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const List<String> routes = ['그라나', '지혜의고목', '에페리아 항구','발렌시아', '아레하자'];

  static const distanceBonus = {
    '그라나': {'발렌시아': 2.1385, '아레하자': 2.28},
    '지혜의고목': {'발렌시아': 2.04, '아레하자': 2.18},
    '트렌트': {'발렌시아': 1.99, '아레하자': 2.15},
    '에페리아 항구': {'발렌시아': 1.94, '아레하자': 2.1},
  };
}