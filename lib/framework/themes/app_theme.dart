import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'theme_constants.dart';

class AppTheme {
  static ThemeData data = ThemeData(
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: null,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: ThemeConstants.lineHeight,
        color: Colors.black,
      ),
      displaySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.appGray,
        height: ThemeConstants.lineHeight,
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: ThemeConstants.lineHeight,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.appGray,
        height: ThemeConstants.lineHeight,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: ThemeConstants.lineHeight,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: ThemeConstants.lineHeight,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: ThemeConstants.lineHeight,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: ThemeConstants.lineHeight,
      ),
    ),
  );
}
