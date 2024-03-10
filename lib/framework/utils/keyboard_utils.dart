import 'package:flutter/material.dart';

import '../helpers/context_helper.dart';

class KeyboardUtils {
  static void hideKeyboard() {
    FocusScope.of(ContextHelper.currentContext).requestFocus(FocusNode());
  }
}
