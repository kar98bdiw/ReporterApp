import 'package:reporter_app/engine/service_locator.dart';
import 'package:reporter_app/http/client.dart';

class AppManager {
  Future<void> init() async {
    ServiceLocator().get<HttpClient>().init();
  }

  Future<void> run() async {}
}
