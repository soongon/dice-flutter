import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('주사위 굴리기'),
      ),
      body: HomeScreen(),
    ),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _firstDiceNumber = 1;
  int _secondDiceNumber = 3;

  void _rollDice() {
    setState(() {
      Random random = Random();
      _firstDiceNumber = random.nextInt(6) + 1;
      _secondDiceNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                _rollDice();
              },
              child: Image.asset('images/dice$_firstDiceNumber.png'),
            ),
          )),
          Expanded(
              child: TextButton(
            child: Image.asset('images/dice$_secondDiceNumber.png'),
            onPressed: () {
              _rollDice();
            },
          )),
        ],
      ),
    );
  }
}
