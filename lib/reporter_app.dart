import 'package:flutter/material.dart';

import 'engine/service_locator.dart';
import 'framework/services/routing_service.dart';

class ReporterApp extends StatelessWidget {
  const ReporterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: ServiceLocator().get<RoutingService>().configs,
    );
  }
}
