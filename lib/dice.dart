import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int number = 1;

  void rollDice() {
    setState(() {
      number = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dice-$number.png',
            height: 200,
          ),
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 20)),
            onPressed: () => rollDice(),
            child: const Text('Roll'),
          ),
        ],
      ),
    );
  }
}
