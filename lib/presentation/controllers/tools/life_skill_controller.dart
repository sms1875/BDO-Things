import 'package:bdo_things/data/constants.dart';
import 'package:bdo_things/data/life_skill_data.dart';

class LifeSkillController {
  static final LifeSkillController instance = LifeSkillController._();

  LifeSkillController._()
      : selectedLifeSkillLevelName = 0,
        selectedLifeSkillLevel = 1,
        lifeSkillData = lifeSkillDataList;

  late int selectedLifeSkillLevelName;
  late int selectedLifeSkillLevel;
  late List<Map<String, dynamic>> lifeSkillData;


  void updateLifeSkillLevel(Map<String, dynamic> data, String newValue) {
    data['lifeSkillLevel'] = lifeSkillLevelNameMap[newValue]! + 1;
  }

}
final lifeSkillLevelNameMap = {
  '초급': 0,
  '견습': 10,
  '숙련': 20,
  '전문': 30,
  '장인': 40,
  '명장': 50,
  '도인': 80,
};