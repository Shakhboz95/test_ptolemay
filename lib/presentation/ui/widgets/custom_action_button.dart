import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton(
      {super.key,
      required this.onPressed,
      required this.child,
      this.isHidden = false});
  final Function() onPressed;
  final Widget child;
  final bool isHidden;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) => ScaleTransition(
        scale: animation,
        child: child,
      ),
      child: isHidden
          ? const SizedBox()
          : FloatingActionButton(
              onPressed: onPressed,
              child: child,
            ),
    );
  }
}
