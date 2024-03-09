import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reporter_app/engine/service_locator.dart';
import 'package:reporter_app/states/dashboard/dashboard_state.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final _state = ServiceLocator().get<DashboardState>();

  @override
  void initState() {
    _state.loadTasks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
