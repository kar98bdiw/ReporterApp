// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DashboardState on DashboardStateBase, Store {
  late final _$selectedPageIndexAtom =
      Atom(name: 'DashboardStateBase.selectedPageIndex', context: context);

  @override
  int get selectedPageIndex {
    _$selectedPageIndexAtom.reportRead();
    return super.selectedPageIndex;
  }

  @override
  set selectedPageIndex(int value) {
    _$selectedPageIndexAtom.reportWrite(value, super.selectedPageIndex, () {
      super.selectedPageIndex = value;
    });
  }

  late final _$DashboardStateBaseActionController =
      ActionController(name: 'DashboardStateBase', context: context);

  @override
  void setSelectedIndex(int index) {
    final _$actionInfo = _$DashboardStateBaseActionController.startAction(
        name: 'DashboardStateBase.setSelectedIndex');
    try {
      return super.setSelectedIndex(index);
    } finally {
      _$DashboardStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedPageIndex: ${selectedPageIndex}
    ''';
  }
}
