import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playSound(int soundNo) {
  final player = AudioCache();
  player.play('note$soundNo.wav');
}

Expanded buildKey({Color color, int soundNo}) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        playSound(soundNo);
      },
      child: Text('click me'),
      color: color,
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNo: 1),
              buildKey(color: Colors.yellow, soundNo: 1),
              buildKey(color: Colors.orange, soundNo: 1),
              buildKey(color: Colors.green, soundNo: 1),
              buildKey(color: Colors.blue, soundNo: 1),
              buildKey(color: Colors.pink, soundNo: 1),
              buildKey(color: Colors.purpleAccent, soundNo: 1),
            ],
          ),
        ),
      ),
    );
  }
}
