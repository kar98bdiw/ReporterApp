import 'package:flutter/material.dart';

class ThemeComponents {
  static List<BoxShadow> appDefaultBoxShadow() => [
        BoxShadow(
          offset: const Offset(0, 3),
          blurRadius: 10,
          spreadRadius: 0,
          color: Colors.black.withOpacity(0.06),
        ),
      ];
}
