import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(
      {required MaterialColor myColor, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: myColor),
        child: const Text(''),
        onPressed: () {
          playSound(soundNumber);
        },
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
            children: [
              buildKey(myColor: Colors.red, soundNumber: 1),
              buildKey(myColor: Colors.orange, soundNumber: 2),
              buildKey(myColor: Colors.yellow, soundNumber: 3),
              buildKey(myColor: Colors.green, soundNumber: 4),
              buildKey(myColor: Colors.teal, soundNumber: 5),
              buildKey(myColor: Colors.blue, soundNumber: 6),
              buildKey(myColor: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
