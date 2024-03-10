import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reporter_app/core/models/task/task.dart';
import 'package:reporter_app/framework/helpers/screen_components.dart';
import 'package:reporter_app/states/report/report_state.dart';

import '../widgets/custom_button.dart';
import '../widgets/task_tile.dart';

@RoutePage()
class ReportPage extends StatefulWidget {
  final Task task;
  const ReportPage({
    super.key,
    required this.task,
  });

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  late ReportState state;

  @override
  void initState() {
    state = ReportState(task: widget.task);
    super.initState();
  }

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
    state.createReport();
  }
}
