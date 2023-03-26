import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SettingWidget extends StatefulWidget {
  final List<Map<String, dynamic>> lifeSkillData;

  const SettingWidget({Key? key, required this.lifeSkillData}) : super(key: key);

  @override
  _SettingWidgetState createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  late List<Map<String, dynamic>> lifeSkillData;
  late int _selectedLifeSkillLevelName, _selectedLifeSkillLevel;

  @override
  void initState() {
    super.initState();
    lifeSkillData = widget.lifeSkillData;
    _selectedLifeSkillLevelName=0;
    _selectedLifeSkillLevel=1;
  }

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      alignment: WrapAlignment.end,
      children: [
        Column(
            children: [
              Container(
                color: Colors.white,
                child: Text('마노스 장비 칸'),
                width: 560,
                height: 600,
              ),
              Container(
                color: Colors.blue,
                child: Text('도핑등'),
                width: 560,
                height: 200,
              ),
            ]
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
            color: Constants.widgetBackgroundColor,
            width: 540,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text('icon'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(data['name'], style: Constants.widgetTextStyle),
                  ),
                  DropdownButton<String>(
                    value: _getLifeSkillLevelName(data),
                    onChanged: (newValue) {
                      setState(() {
                        switch(newValue){
                          case '초급':
                            _selectedLifeSkillLevelName = 0;
                            break;
                          case '견습':
                            _selectedLifeSkillLevelName = 10;
                            break;
                          case '숙련':
                            _selectedLifeSkillLevelName = 20;
                            break;
                          case '전문':
                            _selectedLifeSkillLevelName = 30;
                            break;
                          case '장인':
                            _selectedLifeSkillLevelName = 40;
                            break;
                          case '명장':
                            _selectedLifeSkillLevelName = 50;
                            break;
                          case '도인':
                            _selectedLifeSkillLevelName = 80;
                            break;
                        }
                        _selectedLifeSkillLevel=1;
                        data['lifeSkillLevel'] = _selectedLifeSkillLevelName + _selectedLifeSkillLevel;
                      });
                    },
                    items: Constants.lifeSkillLevels.map(_buildStringDropdownMenuItem).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: DropdownButton<int>(
                      value: _getLifeSkillLevel(data),
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLifeSkillLevel=newValue!;
                          data['lifeSkillLevel'] = _selectedLifeSkillLevelName + _selectedLifeSkillLevel;
                        });
                      },
                      items: _buildIntDropdownMenuItemList(data['lifeSkillLevel']),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '숙련도',
                    style: Constants.widgetTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      _getMastery(data).toString(),
                      style: Constants.widgetTextStyle,
                    ),
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
                        style: Constants.widgetTextStyle,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text('${_getMastery(data)}',
                        style: Constants.widgetTextStyle,
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
  }

  String _getLifeSkillLevelName(Map<String, dynamic> data) {
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
    return Constants.lifeSkillLevels[index];
  }

  int _getLifeSkillLevel(Map<String, dynamic> data){
    int lifeSkillLevel = data['lifeSkillLevel'];
    int levelThreshold = lifeSkillLevel <= 50 ? 10 : lifeSkillLevel <= 80 ? 50 : 80;
    return lifeSkillLevel % levelThreshold;
  }

  String _setLifeSkillLevelName(Map<String, dynamic> data) {
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
    return Constants.lifeSkillLevels[index];
  }

  int _getMastery(Map<String, dynamic> data) {
    int lifeSkillLevel = data['lifeSkillLevel'];
    int mastery;
    if (lifeSkillLevel <= 10) {
      mastery = lifeSkillLevel*5;
    } else if (lifeSkillLevel <= 40) {
      mastery = lifeSkillLevel*10 - 50;
    } else {
      mastery = lifeSkillLevel*5 + 150;
    }
    return mastery;
  }

}

