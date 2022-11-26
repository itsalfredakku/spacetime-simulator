import 'package:flutter/material.dart';

import '../models/position.model.dart';

class AbsolutePositionedComponent extends StatelessWidget {
  const AbsolutePositionedComponent(
      {Key? key, required this.child, required this.position})
      : super(key: key);
  final Widget child;
  final PositionModel position;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: position.x + (position.size?.width ?? 0),
        top: position.y + (position.size?.height ?? 0),
        child: SizedBox(
            width: position.size?.width, height: position.size?.height, child: child));
  }
}
