import 'package:flutter/material.dart';

import 'screen_components.dart';

class PopupWrappers {
  static Widget defaultPopupWrapper({Widget? child}) => Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: ScreenComponents.defaultPopupWrapperContainer(
              child: child,
            ),
          ),
        ),
      );
}
