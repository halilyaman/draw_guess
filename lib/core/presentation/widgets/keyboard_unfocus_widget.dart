import 'package:flutter/material.dart';

class KeyboardUnFocusWidget extends StatelessWidget {
  const KeyboardUnFocusWidget({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
