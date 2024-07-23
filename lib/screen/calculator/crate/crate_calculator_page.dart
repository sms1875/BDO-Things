import 'package:bdo_things/screen/calculator/crate/crate_table_widget.dart';
import 'package:bdo_things/screen/calculator/crate/life_skill_level_widget.dart';
import 'package:bdo_things/screen/calculator/crate/route_setting_widget.dart';
import 'package:flutter/material.dart';

class CrateCalculatorPage extends StatelessWidget {
  const CrateCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trade Crate Calculator'),
      ),
      body: ListView(
        children: [
          RouteSettingWidget(),
          LifeSkillLevelWidget(),
          CrateTableWidget(),
        ],
      ),
    );
  }
}
