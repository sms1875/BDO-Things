import 'package:flutter/material.dart';

class CONSTANTS {
  static const String FIRESTORE_URL = 'https://firestore.googleapis.com/v1/projects/bdothings/databases/(default)/documents';
  static const String MARKET_URL = 'https://trade.kr.playblackdesert.com/Trademarket';

  static const BACKGROUNDCOLOR = Color.fromRGBO(40, 40, 40, 1);
  static const WIDGET_BACKGROUND_COLOR = Color.fromRGBO(60, 60, 60, 1);
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

  static const List<String> originRoutes = ['에페리아 항구','트렌트 마을','수도 발렌시아','지혜의고목','그라나','오드락시아','에일 마을','남포 무들마을'];
  static const List<String> destinationRoutes = ['발렌시아','남포 무들마을'];

  static const distanceBonus = {
    '에페리아':{'발렌시아': 0.9428, '남포 무들마을': 1.213},
    '트렌트 마을': {'발렌시아': 0.9984, '남포 무들마을': 1.28},
    '수도 발렌시아': {'발렌시아': 0, '남포 무들마을': 1.5},
    '지혜의고목': {'발렌시아': 1.0407, '남포 무들마을': 1.253},
    '그라나': {'발렌시아': 0.11385, '남포 무들마을': 1.213},
    '오드락시아': {'발렌시아': 0.97, '남포 무들마을': 1.418},
    '에일 마을': {'발렌시아': 0, '남포 무들마을': 1.451},
    '남포 무들마을': {'발렌시아': 1.5, '남포 무들마을': 0},
  };

  static const List<String> lifeSkillLevels = ['초급', '견습', '숙련','전문', '장인','명장','도인'];
}