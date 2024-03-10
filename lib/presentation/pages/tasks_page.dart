import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:reporter_app/engine/service_locator.dart';
import 'package:reporter_app/presentation/widgets/tasks_list.dart';
import 'package:reporter_app/states/tasks/tasks_state.dart';

@RoutePage()
class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final tasksState = ServiceLocator().get<TasksState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        return TasksList(
          tasks: tasksState.tasks,
        );
      }),
    );
  }
}
