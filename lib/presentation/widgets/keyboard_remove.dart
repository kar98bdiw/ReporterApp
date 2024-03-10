import 'package:flutter/material.dart';

import '../../framework/utils/keyboard_utils.dart';

class KeyboardRemove extends StatelessWidget {
  final Widget? child;
  const KeyboardRemove({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        color: Colors.transparent,
        child: child,
      ),
    );
  }

  void _onTap() {
    KeyboardUtils.hideKeyboard();
  }
}
