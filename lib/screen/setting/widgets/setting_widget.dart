import 'package:bdo_things/screen/setting/widgets/life_skill_widget.dart';
import 'package:flutter/material.dart';

import 'package:bdo_things/constants.dart';

List<Map<String, String>> SettingMenuData = [
  {'name': '가문', 'image': 'tradeCrate', 'page': 'test1'},
  {'name': '생활', 'image': 'tradeCrate', 'page': 'LifeSkill'},
  {'name': '예비', 'image': 'tradeCrate', 'page': 'Test2'},
];

class SettingWidget extends StatefulWidget {
  const SettingWidget({Key? key}) : super(key: key);

  @override
  _SettingWidgetState createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  Widget _currentWidget = SizedBox();
  final List<Map<String, String>> _settingMenuData = SettingMenuData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: _buildSettingMenuWidgetList(context),
        ),
        SizedBox(height: 16.0),
        _currentWidget,
      ],
    );
  }

  List<Widget> _buildSettingMenuWidgetList(BuildContext context) {
    return _settingMenuData
        .map((data) => SettingMenuItem(
            data: data, onTap: () => _onSettingMenuItemTap(data)))
        .toList();
  }

  void _onSettingMenuItemTap(Map<String, String> data) {
    switch (data['page']) {
      case 'Test1':
        setState(() {
          _currentWidget = Container(
            color: Colors.white,
            width: 560,
            height: 600,
            child: Text('test1'),
          );
        });
        break;
      case 'LifeSkill':
        setState(() {
          _currentWidget = LifeSkillWidget();
        });
        break;
      case 'Test2':
        setState(() {
          _currentWidget = Container(
            color: Colors.white,
            width: 560,
            height: 600,
            child: Text('test2'),
          );
        });
        break;
      default:
        setState(() {
          _currentWidget = SizedBox();
        });
    }
  }
}

class SettingMenuItem extends StatelessWidget {
  const SettingMenuItem({
    Key? key,
    required this.data,
    required this.onTap,
  }) : super(key: key);

  final Map<String, String> data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 350,
        height: 80,
        padding: const EdgeInsets.all(10.0),
        color: CONSTANTS.WIDGET_BACKGROUND_COLOR,
        child: Row(
          children: [
            _buildSettingMenuImage(data['image']),
            const SizedBox(width: 16.0),
            Expanded(
              child: Text(
                data['name']!,
                textAlign: TextAlign.left,
                style: CONSTANTS.widgetTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingMenuImage(String? imageName) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('images/icon/Farming.png'),
             fit: BoxFit.fitWidth,
           ),
          ),
    );
  }
}
