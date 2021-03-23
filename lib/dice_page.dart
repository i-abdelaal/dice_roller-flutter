import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 2;
  int rightDiceNumber = 5;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              onPressed: changeDiceFace,
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('assets/images/dice$rightDiceNumber.png'),
              onPressed: changeDiceFace,
            ),
          ),
        ],
      ),
    );
  }
}
