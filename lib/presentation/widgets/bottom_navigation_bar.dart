import 'package:flutter/material.dart' hide BottomNavigationBarItem;

import 'package:flutter_mobx/flutter_mobx.dart';

import '../../states/dashboard/dashboard_state.dart';

class BottomNavigationBar extends StatelessWidget {
  final DashboardState dashboardState;
  const BottomNavigationBar({
    super.key,
    required this.dashboardState,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 20,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 4),
            blurRadius: 20,
            spreadRadius: -5,
            color: Colors.black,
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.task_alt),
        ],
      ),
    );
  }
}

class BottomNavigationBarItemWidget extends StatelessWidget {
  final BottomNavigationItem item;
  final DashboardState dashboardState;
  const BottomNavigationBarItemWidget({
    super.key,
    required this.item,
    required this.dashboardState,
  });

  bool get selected => dashboardState.selectedPageIndex == item.index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onItemTap,
        child: Container(
          color: Colors.transparent,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 29,
              bottom: 24,
            ),
            child: Observer(
              builder: (context) {
                return const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void onItemTap() {
    dashboardState.setSelectedIndex(item.index);
  }
}

class BottomNavigationItem {
  final int index;
  final String asset;
  BottomNavigationItem({
    required this.asset,
    required this.index,
  });
}
