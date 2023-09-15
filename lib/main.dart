import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDice(diceName) {
    // change both dices
    if (diceName == 'left')
      leftDiceNumber = Random().nextInt(6) + 1;
    else if (diceName == 'right') rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$leftDiceNumber.png"),
              onPressed: () {
                setState(() {
                  changeDice('left');
                });
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$rightDiceNumber.png"),
              onPressed: () {
                setState(() {
                  changeDice('right');
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
