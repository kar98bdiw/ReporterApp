import 'package:flutter/material.dart';
import 'package:reporter_app/presentation/widgets/custom_list_tile.dart';

import '../../models/task/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  const TaskTile({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      title: task.title,
      subtitle: task.description,
    );
  }
}
