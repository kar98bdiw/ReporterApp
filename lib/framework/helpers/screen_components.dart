import 'package:flutter/material.dart';
import 'package:reporter_app/framework/extensions/context_theme_extension.dart';

import '../../presentation/widgets/keyboard_remove.dart';
import '../../presentation/widgets/space_divider.dart';
import 'context_helper.dart';

class ScreenComponents {
  static Widget defaultScreenWrapper({
    Widget? appBar,
    Widget? child,
    bool hasHPadding = true,
    bool hasVPadding = true,
  }) {
    Widget? parsedChild;
    if (appBar != null) {
      parsedChild = Column(
        children: [
          appBar,
          const SpaceDivider(height: 40),
          Expanded(child: child ?? const SizedBox()),
        ],
      );
    }
    parsedChild ??= child;
    return KeyboardRemove(
      child: Padding(
        padding: EdgeInsets.only(
          top: hasVPadding ? safeAreaTop : 0,
          left: hasHPadding ? 16 : 0,
          right: hasHPadding ? 16 : 0,
          bottom: hasVPadding ? 16 : 0,
        ),
        child: parsedChild,
      ),
    );
  }

  static Widget authScreenWrapper({
    Widget? child,
  }) =>
      KeyboardRemove(
        child: Padding(
          padding: EdgeInsets.only(
            top: safeAreaTop,
            left: 24,
            right: 24,
          ),
          child: child,
        ),
      );

  static Container defaultPopupWrapperContainer({
    Widget? child,
  }) =>
      Container(
        padding: const EdgeInsets.symmetric(vertical: 56, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 10,
              spreadRadius: 0,
              color: Colors.black.withOpacity(0.06),
            )
          ],
        ),
        child: child,
      );

  static double get safeAreaTop => ContextHelper.currentContext.safeAreaTop == 0
      ? 8
      : ContextHelper.currentContext.safeAreaTop + 8;

  static double get safeAraBottom =>
      ContextHelper.currentContext.safeAreaTop == 0
          ? 8
          : ContextHelper.currentContext.safeAreaTop + 8;
}
