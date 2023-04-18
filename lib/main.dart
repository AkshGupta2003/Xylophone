import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/src/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }
   Expanded buildKey({Color color, int noteNumber}){
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(color),),
        onPressed: (){
          playSound(noteNumber);
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
              buildKey(color: Colors.red, noteNumber: 1),
              buildKey(color: Colors.orange, noteNumber: 2),
              buildKey(color: Colors.yellow, noteNumber: 3),
              buildKey(color: Colors.green, noteNumber: 4),
              buildKey(color: Colors.blue, noteNumber: 5),
              buildKey(color: Colors.indigo, noteNumber: 6),
              buildKey(color: Colors.purple, noteNumber: 7),
      ],
          ),
        ),
      ),
    );
  }
}