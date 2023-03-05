import 'dart:math';

import 'package:flutter/material.dart';

class MyMario extends StatelessWidget {
  
  final direction;
  final midrun;
  final size;
  MyMario({required this.direction, required this.midrun, required this.size});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: size,
        height: size,
        child: midrun
            ? Image.asset('lib/Images/My project1.png')
            : Image.asset('lib/Images/My project2.png'),
      );
    }  else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: size,
          height: size,
          child:midrun
              ? Image.asset('lib/Images/My project1.png')
              : Image.asset('lib/Images/My project2.png'),
        ),
      );
    }
  }
}
