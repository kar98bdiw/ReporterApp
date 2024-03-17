//this class hold logic that must be executed before application run
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:reporter_app/engine/app_manager.dart';
import 'package:reporter_app/engine/service_locator.dart';

import '../firebase_options.dart';

class PreRun {
  static Future<void> execute() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    ServiceLocator().setupServiceLocator();
    AppManager().init();
  }
}
