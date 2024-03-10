import 'package:flutter/material.dart';
import 'package:reporter_app/models/task/task.dart';
import 'package:reporter_app/presentation/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  const TasksList({
    super.key,
    required this.tasks,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(15),
      itemBuilder: (c, i) => TaskTile(task: tasks[i]),
      separatorBuilder: (c, i) => const SizedBox(height: 10),
      itemCount: tasks.length,
    );
  }
}
