import 'package:bdo_things/constants.dart';
import 'package:bdo_things/screen/setting/life_skill_controller.dart';
import 'package:flutter/material.dart';

const lifeSkillLevelNameMap = {
  '초급': 0,
  '견습': 10,
  '숙련': 20,
  '전문': 30,
  '장인': 40,
  '명장': 50,
  '도인': 80,
};

class LifeSkillWidget extends StatefulWidget {
  const LifeSkillWidget({super.key});

  @override
  _LifeSkillWidgetState createState() => _LifeSkillWidgetState();
}

class _LifeSkillWidgetState extends State<LifeSkillWidget> {
  late List<Map<String, dynamic>> lifeSkillData;
  late final LifeSkillController _lifeSkillController = LifeSkillController.instance;

  @override
  void initState() {
    super.initState();
    lifeSkillData = _lifeSkillController.lifeSkillData;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            ManosAccessorieWidget(),
            LifeSkillBuffWidget(),
          ],
        ),

        Column(
          children: _buildLifeSkillColumn(lifeSkillData.where((data) => data['subMastery'] != null)),
        ),
        Column(
          children: _buildLifeSkillColumn(lifeSkillData.where((data) => data['subMastery'] == null)),
        ),
      ],
    );
  }



  List<Widget> _buildLifeSkillColumn(Iterable<Map<String, dynamic>> lifeSkillData) {
    final widgetList = <Widget>[];
    for (final data in lifeSkillData) {
      widgetList.addAll([
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            color: CONSTANTS.WIDGET_BACKGROUND_COLOR,
            width: 540,
            height: 70,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/icon/${data['name']}.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(data['name'], style: CONSTANTS.widgetTextStyle),
                  SizedBox(width: 8.0),
                  DropdownButton<String>(
                    value: _getLifeSkillLevelName(data),
                    onChanged: (newValue) {
                      setState(() {
                        switch(newValue){
                          case '초급':
                            _lifeSkillController.selectedLifeSkillLevelName = 0;
                            break;
                          case '견습':
                            _lifeSkillController.selectedLifeSkillLevelName = 10;
                            break;
                          case '숙련':
                            _lifeSkillController.selectedLifeSkillLevelName = 20;
                            break;
                          case '전문':
                            _lifeSkillController.selectedLifeSkillLevelName = 30;
                            break;
                          case '장인':
                            _lifeSkillController.selectedLifeSkillLevelName = 40;
                            break;
                          case '명장':
                            _lifeSkillController.selectedLifeSkillLevelName = 50;
                            break;
                          case '도인':
                            _lifeSkillController.selectedLifeSkillLevelName = 80;
                            break;
                        }
                        _lifeSkillController.selectedLifeSkillLevel=1;
                        data['lifeSkillLevel'] = _lifeSkillController.selectedLifeSkillLevelName + _lifeSkillController.selectedLifeSkillLevel;
                      });
                      },
                    items: CONSTANTS.lifeSkillLevels.map(_buildStringDropdownMenuItem).toList(),
                  ),
                  SizedBox(width: 8.0),
                  DropdownButton<int>(
                    value: getLifeSkillLevel(data),
                    onChanged: (newValue) {
                      setState(() {
                        _lifeSkillController.selectedLifeSkillLevel=newValue!;
                        data['lifeSkillLevel'] = _lifeSkillController.selectedLifeSkillLevelName + _lifeSkillController.selectedLifeSkillLevel;
                      });
                    },
                    items: _buildIntDropdownMenuItemList(data['lifeSkillLevel']),
                  ),
                  Spacer(),
                  Text(
                    'Mastery  ${getMastery(data)}',
                    style: CONSTANTS.widgetTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
        ..._buildSubMasteryWidgets(data),
      ]);
    }
    return widgetList;
  }

  List<Widget> _buildSubMasteryWidgets(Map<String, dynamic> data) {
    final widgetList = <Widget>[];
    if (data['subMastery'] != null) {
      for (final subMastery in data['subMastery']) {
        widgetList.add(
          Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
              width: 550,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        subMastery['name'],
                        style: CONSTANTS.widgetTextStyle,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text('${getMastery(data)}',
                        style: CONSTANTS.widgetTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }
    return widgetList;
  }

  DropdownMenuItem<String> _buildStringDropdownMenuItem(String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }

  DropdownMenuItem<int> _buildIntDropdownMenuItem(int value) {
    return DropdownMenuItem<int>(
      value: value,
      child: Text(value.toString()),
    );
  }

  List<DropdownMenuItem<int>> _buildIntDropdownMenuItemList(int value) {
    return value <= 50
        ? List.generate(10, (index) => index + 1).map(_buildIntDropdownMenuItem).toList()
        : value <= 80
        ? List.generate(30, (index) => index + 1).map(_buildIntDropdownMenuItem).toList()
        : List.generate(50, (index) => index + 1).map(_buildIntDropdownMenuItem).toList();
  }  String _getLifeSkillLevelName(Map<String, dynamic> data) {
    int lifeSkillLevel = data['lifeSkillLevel'];
    int index = 0;
    if (lifeSkillLevel >= 10) {
      if (lifeSkillLevel <= 20) {
        index = 1;
      } else if (lifeSkillLevel <= 30) {
        index = 2;
      } else if (lifeSkillLevel <= 40) {
        index = 3;
      } else if (lifeSkillLevel <= 50) {
        index = 4;
      } else if (lifeSkillLevel <= 80) {
        index = 5;
      } else {
        index = 6;
      }
    }
    return CONSTANTS.lifeSkillLevels.map(_buildStringDropdownMenuItem).toList()[index].value!;
  }

  int getLifeSkillLevel(Map<String, dynamic> data) {
    final lifeSkillLevel = data['lifeSkillLevel'] as int;
    final levelThreshold = lifeSkillLevel <= 50 ? 10 : lifeSkillLevel <= 80
        ? 50
        : 80;
    return lifeSkillLevel % levelThreshold == 0
        ? levelThreshold
        : lifeSkillLevel % levelThreshold;
  }

  int getMastery(Map<String, dynamic> data) {
    final lifeSkillLevel = data['lifeSkillLevel'] as int;
    return lifeSkillLevel <= 10 ? lifeSkillLevel * 5 : lifeSkillLevel <= 40
        ? lifeSkillLevel * 10 - 50
        : lifeSkillLevel * 5 + 150;
  }

  void updateLifeSkillLevel(Map<String, dynamic> data, String newValue) {
    _lifeSkillController.selectedLifeSkillLevelName = lifeSkillLevelNameMap[newValue]!;
    _lifeSkillController.selectedLifeSkillLevel = 1;
    data['lifeSkillLevel'] =
        _lifeSkillController.selectedLifeSkillLevelName + _lifeSkillController.selectedLifeSkillLevel;
  }
}

class ManosAccessorieWidget extends StatelessWidget {
  const ManosAccessorieWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Text('마노스 장비 칸'),
          width: 560,
          height: 600,
        ),
      ],
    );
  }
}

class LifeSkillBuffWidget extends StatelessWidget {
  const LifeSkillBuffWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          child: Text('도핑'),
          width: 560,
          height: 200,
        ),
      ],
    );
  }
}