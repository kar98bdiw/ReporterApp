import 'package:flutter/material.dart';
import 'package:reporter_app/presentation/widgets/task_tile.dart';

import '../../core/models/task/task.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function(Task)? onTaskTap;
  const TasksList({
    super.key,
    required this.tasks,
    this.onTaskTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (c, i) => TaskTile(
        task: tasks[i],
        onTap: onTaskTap,
      ),
      separatorBuilder: (c, i) => const SizedBox(height: 10),
      itemCount: tasks.length,
    );
  }
}
