import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/models/task/task.dart';
import '../../presentation/pages/dashboard_page.dart';
import '../../presentation/pages/report_page.dart';
import '../../presentation/pages/task_page.dart';
import '../../presentation/pages/tasks_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: DashboardRoute.page,
          children: [
            AutoRoute(page: TasksRouter.page, children: [
              AutoRoute(
                initial: true,
                page: TasksRoute.page,
              ),
              AutoRoute(
                page: TaskRoute.page,
              ),
              AutoRoute(
                page: ReportRoute.page,
              ),
            ]),
          ],
        ),
      ];
}

@RoutePage(name: 'TasksRouter')
class TasksRouterPage extends AutoRouter {
  const TasksRouterPage({super.key});
}
