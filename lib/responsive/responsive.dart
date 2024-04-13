import 'package:flutter/material.dart';

class responsive extends StatelessWidget {
  final Widget child;
  const responsive({required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 600),
        child: child,
      ),
    );
  }
}
