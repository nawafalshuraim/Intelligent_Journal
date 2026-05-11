import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:moodiary/l10n/l10n.dart';

import 'goals_logic.dart';

class GoalsPage extends StatelessWidget {
  const GoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Bind.find<GoalsLogic>();

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.homeNavigatorGoals),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: const Icon(Icons.add_rounded),
              tooltip: 'Add Goal',
              onPressed: () => logic.showAddGoalDialog(context),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: GetBuilder<GoalsLogic>(
          builder: (_) {
            if (logic.state.goals.isEmpty) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 12.0,
                  children: [
                    Icon(
                      Icons.flag_outlined,
                      size: 64,
                      color: context.theme.colorScheme.onSurface.withValues(
                        alpha: 0.3,
                      ),
                    ),
                    Text(
                      'No goals yet',
                      style: context.textTheme.titleMedium?.copyWith(
                        color: context.theme.colorScheme.onSurface.withValues(
                          alpha: 0.5,
                        ),
                      ),
                    ),
                    Text(
                      'Tap + to add your first goal',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.theme.colorScheme.onSurface.withValues(
                          alpha: 0.4,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }

            return ListView.separated(
              padding: const EdgeInsets.all(16.0),
              itemCount: logic.state.goals.length,
              separatorBuilder: (_, __) => const SizedBox(height: 8.0),
              itemBuilder: (context, index) {
                final goal = logic.state.goals[index];
                return Card.filled(
                  color: context.theme.colorScheme.surfaceContainerLow,
                  margin: EdgeInsets.zero,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () => logic.showEditGoalDialog(context, goal),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: context.theme.colorScheme.primaryContainer,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.flag_rounded,
                              color:
                                  context.theme.colorScheme.onPrimaryContainer,
                              size: 22,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 4.0,
                              children: [
                                Text(
                                  goal.title,
                                  style: context.textTheme.titleSmall?.copyWith(
                                    color:
                                        context.theme.colorScheme.onSurface,
                                  ),
                                ),
                                Text(
                                  DateFormat.yMMMd().format(goal.createdAt),
                                  style: context.textTheme.labelSmall?.copyWith(
                                    color: context.theme.colorScheme.secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.delete_outline_rounded,
                              color: context.theme.colorScheme.error,
                              size: 20,
                            ),
                            onPressed: () async {
                              final confirmed = await showDialog<bool>(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: const Text('Delete Goal'),
                                  content: Text(
                                    'Delete "${goal.title}"?',
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.of(ctx).pop(false),
                                      child: const Text('Cancel'),
                                    ),
                                    FilledButton(
                                      onPressed: () =>
                                          Navigator.of(ctx).pop(true),
                                      child: const Text('Delete'),
                                    ),
                                  ],
                                ),
                              );
                              if (confirmed == true) {
                                await logic.deleteGoal(goal.id);
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
