import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNumber = getRandomBallNumber();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
        ),
        backgroundColor: Colors.blue[100],
        body: Center(
          child: FlatButton(
            child: Image.asset('images/ball$ballNumber.png'),
            onPressed: updateBallNumber,
          ),
        ),
      ),
    );
  }

  void updateBallNumber() {
    setState(() {
      ballNumber = getRandomBallNumber();
    });
  }

  static int getRandomBallNumber() {
    return Random().nextInt(5) + 1;
  }
}
