import 'dart:math';

import 'package:flutter/material.dart';

class JumpingMario extends StatelessWidget {
  
  final direction;
  final size;
  JumpingMario({required this.direction, required this.size});
  
  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: size,
        height: size,
        child: Image.asset('lib/Images/My project3.png'),
      );
    }  else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: size,
          height: size,
          child: Image.asset('lib/Images/My project3.png'),
        ),
      );
    }
  }
}
