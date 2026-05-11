import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moodiary/common/models/goal.dart';
import 'package:moodiary/utils/goal_util.dart';

import 'goals_state.dart';

class _GoalDialog extends StatefulWidget {
  final String title;
  final String submitLabel;
  final String initialTitle;
  final Future<void> Function(String title) onSubmit;

  const _GoalDialog({
    required this.title,
    required this.submitLabel,
    required this.onSubmit,
    this.initialTitle = '',
  });

  @override
  State<_GoalDialog> createState() => _GoalDialogState();
}

class _GoalDialogState extends State<_GoalDialog> {
  late final TextEditingController _titleController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.initialTitle);
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: TextField(
        controller: _titleController,
        decoration: const InputDecoration(labelText: 'Title'),
        textCapitalization: TextCapitalization.sentences,
        autofocus: true,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () async {
            final title = _titleController.text.trim();
            if (title.isNotEmpty) {
              await widget.onSubmit(title);
              if (context.mounted) Navigator.of(context).pop();
            }
          },
          child: Text(widget.submitLabel),
        ),
      ],
    );
  }
}

class GoalsLogic extends GetxController {
  final GoalsState state = GoalsState();

  @override
  void onReady() {
    _load();
    super.onReady();
  }

  void _load() {
    state.goals = GoalUtil.getGoals();
    update();
  }

  Future<void> deleteGoal(String id) async {
    await GoalUtil.deleteGoal(id);
    _load();
  }

  Future<void> showAddGoalDialog(BuildContext context) async {
    await showDialog<void>(
      context: context,
      builder: (ctx) => _GoalDialog(
        title: 'Add Goal',
        submitLabel: 'Add',
        onSubmit: (title) async {
          await GoalUtil.addGoal(Goal.create(title: title));
          _load();
        },
      ),
    );
  }

  Future<void> showEditGoalDialog(BuildContext context, Goal goal) async {
    await showDialog<void>(
      context: context,
      builder: (ctx) => _GoalDialog(
        title: 'Edit Goal',
        submitLabel: 'Save',
        initialTitle: goal.title,
        onSubmit: (title) async {
          await GoalUtil.updateGoal(
            Goal(
              id: goal.id,
              title: title,
              createdAt: goal.createdAt,
            ),
          );
          _load();
        },
      ),
    );
  }
}
