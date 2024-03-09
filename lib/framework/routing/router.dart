import 'package:auto_route/auto_route.dart';

import '../../presentation/pages/dashboard_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: DashboardRoute.page,
        ),
      ];
}
