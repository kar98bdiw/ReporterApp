import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reporter_app/framework/helpers/screen_components.dart';
import 'package:reporter_app/framework/routing/router.dart';
import 'package:reporter_app/presentation/widgets/custom_button.dart';
import 'package:reporter_app/presentation/widgets/task_tile.dart';

import '../../core/models/task/task.dart';

@RoutePage()
class TaskPage extends StatefulWidget {
  final Task task;
  const TaskPage({
    super.key,
    required this.task,
  });

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenComponents.defaultScreenWrapper(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TaskTile(
              task: widget.task,
            ),
            CustomButton(
              title: 'Create report',
              onTap: _onCreateReportTap,
            ),
          ],
        ),
      ),
    );
  }

  void _onCreateReportTap() {
    context.router.push(ReportRoute(task: widget.task));
  }
}
