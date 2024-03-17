import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:reporter_app/engine/service_locator.dart';
import 'package:reporter_app/repositories/task_repository.dart';

import '../../core/models/task/task.dart';

part 'tasks_state.g.dart';

class TasksState = TasksStateBase with _$TasksState;

abstract class TasksStateBase with Store {
  @observable
  ObservableList<Task> tasks = <Task>[].asObservable();

  @action
  Future<void> init() async {
    initTaskListener();
  }

  void initTaskListener() {
    ServiceLocator().get<TaskRepository>().taskNotifier.listen((value) {
      manageTask(value);
    });
  }

  void manageTask(Task task) {
    var index = tasks.indexWhere((element) => task.id == element.id);
    if (index == -1) {
      tasks.add(task);
    } else {
      tasks[index] = task;
    }
    tasks = tasks.toList().asObservable();
  }
}
