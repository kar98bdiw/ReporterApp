import 'package:flutter/material.dart';
import 'package:reporter_app/app_management/pre_run.dart';
import 'package:reporter_app/reporter_app.dart';

Future<void> main(List<String> args) async {
  PreRun.execute();
  run();
}

Future<void> run() async {
  runApp(const ReporterApp());
}
