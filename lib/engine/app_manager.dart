import 'package:reporter_app/engine/service_locator.dart';
import 'package:reporter_app/http/client.dart';
import 'package:reporter_app/repositories/task_repository.dart';
import 'package:reporter_app/states/tasks/tasks_state.dart';

class AppManager {
  Future<void> init() async {
    ServiceLocator().get<HttpClient>().init();
    run();
  }

  Future<void> run() async {
    loadData();
    ServiceLocator().get<TaskRepository>().initTaskListener();
  }

  Future<void> loadData() async {
    ServiceLocator().get<TasksState>().init();
  }
}
