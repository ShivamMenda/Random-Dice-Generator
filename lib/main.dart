import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: DiceApp(),
      ),
    );
  }
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftdicenum = 1;
  int rightdicenum = 1;
  getrandom() {
    setState(() {
      leftdicenum = Random().nextInt(6) + 1;
      rightdicenum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                getrandom();
              },
              child: Image.asset('images/dice$leftdicenum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                getrandom();
              },
              child: Image.asset('images/dice$rightdicenum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
