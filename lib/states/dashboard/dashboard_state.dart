import 'package:mobx/mobx.dart';

part 'dashboard_state.g.dart';

class DashboardState = DashboardStateBase with _$DashboardState;

abstract class DashboardStateBase with Store {
  @observable
  int selectedPageIndex = 0;

  @action
  void setSelectedIndex(int index) {
    selectedPageIndex = index;
  }
}
