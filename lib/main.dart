import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue[700],
            title: Center(
              child: Text('Magic Ball'),
            ),
          ),
          body: MyApp(),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

int magicBallNumber = 1;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                MagicBallNumber();
              });
            },
            child:
                Center(child: Image.asset('images/ball$magicBallNumber.png')),
          ),
        ),
      ],
    );
  }
}

void MagicBallNumber() {
  magicBallNumber = Random().nextInt(5) + 1;
}
