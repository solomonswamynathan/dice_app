import 'package:flutter/material.dart';

import 'package:dice_app/dice.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> gradientColor;
  const GradientContainer({super.key, required this.gradientColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: gradientColor,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: const Dice());
  }
}
