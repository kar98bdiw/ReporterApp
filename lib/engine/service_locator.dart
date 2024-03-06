import 'package:get_it/get_it.dart';
import 'package:reporter_app/engine/app_manager.dart';
import 'package:reporter_app/environment/environment.dart';
import 'package:reporter_app/http/client.dart';

class ServiceLocator {
  static ServiceLocator serviceLocator = ServiceLocator._();

  ServiceLocator._();

  factory ServiceLocator() => serviceLocator;

  var locator = GetIt.I;

  setupServiceLocator() {
    _setupAppManagement();
    _setupAppPackages();
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
}
