import 'package:flutter/material.dart';

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
    return GestureDetector(
      onTap: () => onTap?.call(task),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.3,
            color: Colors.black.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text(task.title)),
                Text(task.status.name),
              ],
            ),
            const SizedBox(height: 10),
            Text(task.description),
          ],
        ),
      ),
    );
  }
}
