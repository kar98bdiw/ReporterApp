import 'package:flutter/material.dart';

import 'theme_components.dart';

class WidgetComponents {
  static Container appDefaultContainer({
    EdgeInsets? padding,
    Widget? child,
  }) =>
      Container(
        padding: padding,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: ThemeComponents.appDefaultBoxShadow(),
          color: Colors.white,
        ),
        child: child,
      );
}
