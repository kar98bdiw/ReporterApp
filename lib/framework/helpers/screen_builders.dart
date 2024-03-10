import 'package:flutter/material.dart';

class ScreenBuilders {
  static Widget Function(BuildContext, int) simpleSeparatorBuilder(
          int size, bool toWidth) =>
      (BuildContext context, int index) => SizedBox(
            width: toWidth ? size.toDouble() : 0,
            height: toWidth ? 0 : size.toDouble(),
          );
}
