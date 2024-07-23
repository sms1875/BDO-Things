import 'package:flutter/material.dart';

final List<String> tiers = [
  'Beginner',
  'Apprentice',
  'Skilled',
  'Professional',
  'Artisan',
  'Master',
  'Guru'
];

class LifeSkillLevelProvider extends ChangeNotifier {
  final List<LifeSkillLevel> levels = generateLifeSkillLevels();
  int selectedLevel = 60; // Default to "Master 10"

  int calculateLifeSkillLevel(String level, int step) {
    int base = tiers.indexOf(level) * 10;
    if (level == 'Guru') base += 20;
    return base + step;
  }

  String get selectedLevelString {
    int tierIndex;
    int step;

    if (selectedLevel <= 50) {
      tierIndex = (selectedLevel - 1) ~/ 10;
      step = selectedLevel - (tierIndex * 10);
    } else {
      if (selectedLevel <= 80) {
        tierIndex = 5;
        step = selectedLevel - 50;
      } else {
        tierIndex = 6;
        step = selectedLevel - 80;
      }
    }

    return '${tiers[tierIndex]} $step';
  }

  void selectLevel(String level, int step) {
    selectedLevel = calculateLifeSkillLevel(level, step);
    notifyListeners();
  }
}

class LifeSkillLevel {
  final String level;
  final int maxLevel;

  LifeSkillLevel(this.level, this.maxLevel);
}

List<LifeSkillLevel> generateLifeSkillLevels() {
  final List<int> maxLevels = [10, 10, 10, 10, 10, 30, 50];
  final List<LifeSkillLevel> data = [];

  for (int i = 0; i < tiers.length; i++) {
    data.add(LifeSkillLevel(tiers[i], maxLevels[i]));
  }

  return data;
}
