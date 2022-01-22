import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final Player = AudioCache();
    Player.play('note$soundNumber.wav');
  }

  Expanded soundKey({Color? color, int? soundNumber}) {
    return Expanded(
      child: InkWell(
        child: Container(
          color: color,
        ),
        onTap: () {
          playSound(soundNumber!);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Play Your Music',
          style: TextStyle(
              wordSpacing: 8, fontSize: 28, color: Colors.amberAccent),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          soundKey(color: Colors.blueGrey, soundNumber: 1),
          soundKey(color: Colors.brown, soundNumber: 2),
          soundKey(color: Colors.green, soundNumber: 3),
          soundKey(color: Colors.yellow, soundNumber: 4),
          soundKey(color: Colors.teal, soundNumber: 5),
          soundKey(color: Colors.pinkAccent, soundNumber: 6),
          soundKey(color: Colors.purple, soundNumber: 7),
        ],
      )),
    );
  }
}
