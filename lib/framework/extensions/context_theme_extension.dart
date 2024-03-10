import 'package:flutter/material.dart';

extension ContextThemeExtension on BuildContext {
  ThemeData get themeData => Theme.of(this);

  TextTheme get textTheme => themeData.textTheme;

  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get displaySmall => textTheme.displaySmall;
  TextStyle? get titleLarge => textTheme.titleLarge;
  TextStyle? get titleMedium => textTheme.titleMedium;
  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get labelLarge => textTheme.labelLarge;
  TextStyle? get labelMedium => textTheme.labelMedium;

  double get safeAreaTop => MediaQuery.of(this).padding.top;
  double get sageAreaBottom => MediaQuery.of(this).padding.bottom;
}
