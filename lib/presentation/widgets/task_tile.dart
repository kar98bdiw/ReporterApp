import 'package:flutter/material.dart';
import 'package:reporter_app/presentation/widgets/custom_list_tile.dart';

import '../../core/models/task/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function(Task task)? onTap;
  const TaskTile({
    super.key,
    required this.task,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      onTap: () => onTap?.call(task),
      title: task.title,
      subtitle: task.description,
    );
  }
}
