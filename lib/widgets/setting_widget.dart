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

  @override
  void initState() {
    super.initState();
    lifeSkillData = widget.lifeSkillData;
  }

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      alignment: WrapAlignment.end,
      children: [
        Container(
          color: Colors.white,
          child: Text('마노스 장비 칸'),
          width: 560,
          height: 900,
        ),
        Column(
          children: [
            for (final data in lifeSkillData.where((data) => data['subMastery'] != null))
              ..._buildLifeSkillWidgets([data]),
          ],
        ),
        Column(
          children: [
            for (final data in lifeSkillData.where((data) => data['subMastery'] == null))
              ..._buildLifeSkillWidgets([data]),
          ],
        ),
      ],
    );

  }

  List<Widget> _buildLifeSkillWidgets(Iterable<Map<String, dynamic>> dataList) {
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

    final widgetList = <Widget>[];
    for (final data in dataList) {
      widgetList.add(
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            color: Constants.widgetBackgroundColor,
            width: 540,
            height: 80,
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
                    value: _getLifeSkillName(data),
                    onChanged: (newValue) {},
                    items: Constants.lifeSkillLevels.map(_buildStringDropdownMenuItem).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: DropdownButton<int>(
                      value: _getLifeSkillLevel(data),
                      onChanged: (newValue) {
                        // 콜백에서의 처리가 필요한 경우 처리를 추가합니다.
                      },
                      items: List.generate(50, (index) => index + 1).map(_buildIntDropdownMenuItem).toList(),
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
      );
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
    }
    return widgetList;
  }

  String _getLifeSkillName(Map<String, dynamic> data) {
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