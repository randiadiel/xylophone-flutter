import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({int keyNote, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(keyNote);
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
            children: <Widget>[
              buildKey(keyNote: 1, color: Colors.red),
              buildKey(keyNote: 2, color: Colors.orange),
              buildKey(keyNote: 3, color: Colors.yellow),
              buildKey(keyNote: 4, color: Colors.green),
              buildKey(keyNote: 5, color: Colors.teal),
              buildKey(keyNote: 6, color: Colors.blue),
              buildKey(keyNote: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
