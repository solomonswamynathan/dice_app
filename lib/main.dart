import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(const Dice());
}

class Dice extends StatelessWidget {
  const Dice({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(gradientColor: [
          Colors.deepPurple,
          Color.fromARGB(138, 149, 108, 221)
        ]),
      ),
    );
  }
}
