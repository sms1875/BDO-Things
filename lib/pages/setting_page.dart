import 'package:bdo_things/widgets/setting_widget.dart';
import 'package:flutter/material.dart';

import '../data/life_skill_data.dart';
import 'base_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);


  static const pageTitle = 'Settings';

  @override
  Widget build(BuildContext context) {
    return BasePage(
      pageTitle: SettingPage.pageTitle,
      body: SettingWidget(lifeSkillData: lifeSkillData,)
    );
  }
}
