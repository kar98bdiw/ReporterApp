import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide BottomNavigationBar;
import 'package:mobx/mobx.dart';
import 'package:reporter_app/framework/routing/router.dart';

import '../../states/dashboard/dashboard_state.dart';
import '../widgets/bottom_navigation_bar.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  var dashboardState = DashboardState();
  TabController? autoTabController;

  late ReactionDisposer disposer;

  @override
  void initState() {
    addBottomNavigationChangeReaction();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AutoTabsRouter.tabBar(
        routes: const [
          TasksRouter(),
        ],
        builder: (context, child, tabController) {
          setTabController(tabController);
          addTabChangeListener();
          return child;
        },
      ),
      bottomNavigationBar: BottomNavigationBar(dashboardState: dashboardState),
    );
  }

  @override
  void dispose() {
    disposer.call();
    autoTabController?.removeListener(onTabChange);
    super.dispose();
  }

  void setTabController(TabController controller) {
    autoTabController = controller;
  }

  void addBottomNavigationChangeReaction() {
    disposer = reaction(
      (val) => dashboardState.selectedPageIndex,
      animationToPage,
    );
  }

  void animationToPage(index) {
    if (index != autoTabController?.index) {
      autoTabController?.animateTo(index);
    }
  }

  void addTabChangeListener() {
    autoTabController?.removeListener(onTabChange);
    autoTabController?.addListener(onTabChange);
  }

  void onTabChange() {
    if (autoTabController?.index != dashboardState.selectedPageIndex) {
      dashboardState.setSelectedIndex(
        autoTabController?.index ?? 0,
      );
    }
  }
}
