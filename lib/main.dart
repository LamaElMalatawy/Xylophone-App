import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({int number = 1, Color color = Colors.red}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(number);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: SizedBox(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildKey(number: 1, color: Colors.red),
              buildKey(number: 2, color: Colors.orange),
              buildKey(number: 3, color: Colors.yellow),
              buildKey(number: 4, color: Colors.green),
              buildKey(number: 5, color: Colors.teal),
              buildKey(number: 6, color: Colors.blue),
              buildKey(number: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
