import 'package:mobx/mobx.dart';

import '../../engine/service_locator.dart';
import '../../models/task/task.dart';
import '../../repositories/task_repository.dart';

part 'tasks_state.g.dart';

class TasksState = TasksStateBase with _$TasksState;

abstract class TasksStateBase with Store {
  @observable
  ObservableList<Task> tasks = <Task>[].asObservable();

  @action
  Future<void> loadTasks() async {
    // try {
    var res = await ServiceLocator().get<TaskRepository>().getTasks();
    tasks = (res.data as List<Task>).asObservable();
    print(tasks);
    // } catch (e) {}
  }
}
