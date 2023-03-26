import 'package:bdo_things/widgets/setting_widget.dart';
import 'package:flutter/material.dart';

import '../data/life_skill_data.dart';
import 'base_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  static const pageTitle = 'Settings';

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  Future<bool?> _onWillPop(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Do you want to save your changes?'),
          actions: <Widget>[
            TextButton(
              child: const Text('No'),
              onPressed: () => Navigator.pop(context, false),
            ),
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                // Save changes here
                Navigator.pop(context, true);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      pageTitle: SettingPage.pageTitle,
      body: SettingWidget(lifeSkillData: lifeSkillData,)
    );
  }


}
