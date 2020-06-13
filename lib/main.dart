import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int sn) {
    final player = AudioCache();
    player.play('note$sn.wav');
  }

  Expanded buildkey(int nu, Color col) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playsound(nu);
        },
        color: col,
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
              buildkey(1, Colors.red),
              buildkey(2, Colors.orange),
              buildkey(3, Colors.yellow),
              buildkey(4, Colors.green),
              buildkey(5, Colors.teal),
              buildkey(6, Colors.blue),
              buildkey(7, Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
