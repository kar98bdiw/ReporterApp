//this class hold logic that must be executed before application run
import 'package:flutter/material.dart';
import 'package:reporter_app/app_management/app_manager.dart';
import 'package:reporter_app/app_management/service_locator.dart';

class PreRun {
  static void execute() {
    WidgetsFlutterBinding.ensureInitialized();
    ServiceLocator().setupServiceLocator();
    AppManager().init();
  }
}
