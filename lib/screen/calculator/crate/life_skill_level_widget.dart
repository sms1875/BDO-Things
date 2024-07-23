import 'package:bdo_things/screen/common/widget/dropdown_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bdo_things/provider/life_skill_level_provider.dart';

class LifeSkillLevelWidget extends StatelessWidget {
  const LifeSkillLevelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LifeSkillLevelProvider>(
      builder: (context, provider, child) {
        final selectedLevel = provider.selectedLevel;
        final selectedLevelText = selectedLevel == 0
            ? 'Select Life Skill Level'
            : provider.selectedLevelString;


        return DropdownTile(
          selectedValue: selectedLevelText,
          onChanged: (String newValue) {
            final parts = newValue.split(' ');
            final level = parts[0];
            final step = int.parse(parts[1]);
            provider.selectLevel(level, step);
          },
          options: _buildLifeSkillOptions(provider.levels),
        );
      },
    );
  }

  Map<String, List<String>> _buildLifeSkillOptions(List<LifeSkillLevel> levels) {
    final Map<String, List<String>> options = {};
    for (var level in levels) {
      options[level.level] = List.generate(level.maxLevel, (index) {
        return '${level.level} ${index + 1}';
      });
    }
    return options;
  }
}
