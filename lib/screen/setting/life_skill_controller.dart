import 'package:bdo_things/constants.dart';
import 'package:bdo_things/types/life_skill_data.dart';

class LifeSkillProvider {
  static final LifeSkillProvider instance = LifeSkillProvider._();

  LifeSkillProvider._() {
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

  void updateLifeSkillLevel(Map<String, dynamic> data, String newValue) {
    selectedLifeSkillLevelName = CONSTANTS.lifeSkillLevelNameMap[newValue]!;
    selectedLifeSkillLevel = 1;
    data['lifeSkillLevel'] = selectedLifeSkillLevelName + selectedLifeSkillLevel;
  }
}