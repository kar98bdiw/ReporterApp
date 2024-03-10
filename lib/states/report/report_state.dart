import 'package:mobx/mobx.dart';
import 'package:reporter_app/core/models/task/task.dart';

part 'report_state.g.dart';

class ReportState = ReportStateBase with _$ReportState;

abstract class ReportStateBase with Store {
  final Task task;

  ReportStateBase({
    required this.task,
  });

  @action
  Future<void> createReport() async {}
}
