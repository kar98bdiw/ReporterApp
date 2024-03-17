import 'package:flutter/material.dart';
import 'package:reporter_app/engine/pre_run.dart';
import 'package:reporter_app/reporter_app.dart';

Future<void> main(List<String> args) async {
  await PreRun.execute();

  run();
}

Future<void> run() async {
  runApp(const ReporterApp());
}
