import 'dart:developer';

import 'package:flutter/foundation.dart';

class AppLogger {
  static List<String> logStack = [];

  static void addLog(String val) {
    logStack.add(val);
  }

  static void logM(String val) {
    addLog(val);

    if (kDebugMode) {
      log('Message:$val');
    }
  }

  static void logW(String val) {
    addLog(val);

    if (kDebugMode) {
      log('Warning:$val');
    }
  }

  static void logE(String val) {
    addLog(val);

    if (kDebugMode) {
      log('Error:$val');
    }
  }
}
