import 'package:flutter/cupertino.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:nike/model/nikeShoe.dart';

class ShoesPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: shoesList.length,
      itemBuilder: (context, index) {
        return Container(
          child: Transform.rotate(
              angle: math.pi / -15,
              child: Image.asset(shoesList[index].imageUrl)),
        );
      },
    );
  }
}
