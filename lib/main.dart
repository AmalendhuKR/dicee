import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var diceNumber = 5;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$diceNumber.png"),
              onPressed: () {
                print("Left button pressed");
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$diceNumber.png"),
              onPressed: () {
                print("Right button pressed");
              },
            ),
          )
        ],
      ),
    );
  }
}
