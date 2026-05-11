import 'package:moodiary/common/models/goal.dart';
import 'package:moodiary/persistence/pref.dart';

class GoalUtil {
  static const _key = 'goals';

  static List<Goal> getGoals() {
    final list = PrefUtil.getValue<List<String>>(_key) ?? [];
    return list.map((s) => Goal.fromJsonString(s)).toList();
  }

  static Future<void> _save(List<Goal> goals) async {
    await PrefUtil.setValue<List<String>>(
      _key,
      goals.map((g) => g.toJsonString()).toList(),
    );
  }

  static Future<void> addGoal(Goal goal) async {
    final goals = getGoals();
    goals.add(goal);
    await _save(goals);
  }

  static Future<void> deleteGoal(String id) async {
    final goals = getGoals();
    goals.removeWhere((g) => g.id == id);
    await _save(goals);
  }

  static Future<void> updateGoal(Goal updated) async {
    final goals = getGoals();
    final index = goals.indexWhere((g) => g.id == updated.id);
    if (index != -1) {
      goals[index] = updated;
      await _save(goals);
    }
  }
}
