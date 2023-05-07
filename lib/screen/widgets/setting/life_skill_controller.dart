import 'package:bdo_things/data/life_skill_data.dart';

class LifeSkillController {
  static final LifeSkillController instance = LifeSkillController._();

  LifeSkillController._() {
    _initData();
  }

  late int selectedLifeSkillLevelName;
  late int selectedLifeSkillLevel;
  late List<Map<String, dynamic>> lifeSkillData;

  void _initData() {
    selectedLifeSkillLevelName = 0;
    selectedLifeSkillLevel = 1;
    lifeSkillData = lifeSkillDataList;
  }
}