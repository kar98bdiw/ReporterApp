import 'package:mobx/mobx.dart';
import 'package:reporter_app/engine/service_locator.dart';
import 'package:reporter_app/models/task/task.dart';
import 'package:reporter_app/repositories/task_repository.dart';

part 'dashboard_state.g.dart';

class DashboardState = DashboardStateBase with _$DashboardState;

abstract class DashboardStateBase with Store {
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
