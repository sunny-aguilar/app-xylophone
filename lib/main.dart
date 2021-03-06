import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  void playSounds(int note) {
    final player = AudioCache();
    player.play('sounds/note$note.wav');
  }

  Widget buildKey({final note, final color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          primary: Colors.white,
          backgroundColor: color,
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {
          playSounds(note);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(note: 1, color: Colors.red),
              buildKey(note: 2, color: Colors.orange),
              buildKey(note: 3, color: Colors.yellow),
              buildKey(note: 4, color: Colors.green),
              buildKey(note: 5, color: Colors.teal),
              buildKey(note: 6, color: Colors.blue),
              buildKey(note: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
