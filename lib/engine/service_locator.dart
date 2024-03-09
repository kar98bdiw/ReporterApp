import 'package:get_it/get_it.dart';
import 'package:reporter_app/engine/app_manager.dart';
import 'package:reporter_app/environment/environment.dart';
import 'package:reporter_app/http/client.dart';
import 'package:reporter_app/repositories/task_repository.dart';
import 'package:reporter_app/states/dashboard/dashboard_state.dart';

import '../framework/services/routing_service.dart';

class ServiceLocator {
  static ServiceLocator serviceLocator = ServiceLocator._();

  ServiceLocator._();

  factory ServiceLocator() => serviceLocator;

  var locator = GetIt.I;

  setupServiceLocator() {
    _registerFrameworkInstances();
    _setupAppManagement();
    _setupAppPackages();
    _setupRepositories();
    _registerStates();
  }

  T get<T extends Object>() {
    return locator.get<T>();
  }

  void _registerSingleton<T extends Object>(T instance) {
    locator.registerSingleton<T>(instance);
  }

  void _setupAppManagement() {
    _registerSingleton<AppManager>(AppManager());
  }

  void _setupAppPackages() {
    _registerSingleton<HttpClient>(HttpClient(environment: Environment()));
  }

  void _setupRepositories() {
    _registerSingleton<TaskRepository>(
        TaskRepository(client: get<HttpClient>()));
  }

  void _registerFrameworkInstances() {
    _registerSingleton<RoutingService>(RoutingService());
  }

  void _registerStates() {
    _registerSingleton<DashboardState>(DashboardState());
  }
}
