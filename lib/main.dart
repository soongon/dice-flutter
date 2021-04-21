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
  int diceNumber = 1;

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
                setState(() {
                  diceNumber = 3;
                });
                print('first dice tabbed.. $diceNumber');
              },
              child: Image.asset('images/dice$diceNumber.png'),
            ),
          )),
          Expanded(
              child: TextButton(
            child: Image.asset('images/dice5.png'),
            onPressed: () {
              print('second dice tabbed..');
            },
          )),
        ],
      ),
    );
  }
}
