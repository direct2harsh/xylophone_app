import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void Playsound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded myKey(x, y) {
    return Expanded(
      child: FlatButton(
        color: y,
        onPressed: () {
          Playsound(x);
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
              myKey(1, Colors.red),
              myKey(2, Colors.white),
              myKey(3, Colors.teal),
              myKey(4, Colors.yellow),
              myKey(5, Colors.blue),
              myKey(6, Colors.orange),
              myKey(7, Colors.green)
            ],
          ),
        ),
      ),
    );
  }
}
