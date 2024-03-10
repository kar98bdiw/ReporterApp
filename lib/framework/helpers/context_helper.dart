import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../services/routing_service.dart';

class ContextHelper {
  static BuildContext get currentContext =>
      GetIt.I<RoutingService>().appRouter.navigatorKey.currentContext!;
}
