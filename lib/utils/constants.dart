import 'package:flutter/material.dart';

class Constants {
  static const backgroundColor = Color.fromRGBO(40, 40, 40, 1);
  static const widgetBackgroundColor = Color.fromRGBO(60, 60, 60, 1);
  static const pagePadding = EdgeInsets.symmetric(horizontal: 20, vertical: 10);

  static const TextStyle appBarTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle pageTitleTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 24,
    letterSpacing: 1,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle widgetTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const List<String> routes = ['그라나', '지혜의고목', '에페리아 항구','발렌시아', '아레하자'];

  static const distanceBonus = {
    '그라나': {'발렌시아': 1.1385, '아레하자': 1.28},
    '지혜의고목': {'발렌시아': 1.04, '아레하자': 1.18},
    '트렌트': {'발렌시아': 0.99, '아레하자': 1.15},
    '에페리아 항구': {'발렌시아': 0.94, '아레하자': 1.1},
  };

  static const List<String> lifeSkillLevels = ['초급', '견습', '숙련','전문', '장인','명장','도인'];
}