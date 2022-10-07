// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'dart:async';

class Voice extends StatelessWidget {
  Voice({super.key});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text("Voice session"),
      ),
      body: ListView(children: [
        Card(
          color: Colors.red[200],
          child: Text(
            "conversation 1 : I'm Hungry",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(children: [
          Align(alignment: Alignment.center),
          Padding(padding: EdgeInsets.all(23)),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
            icon: Icon(Icons.start),
            onPressed: () {
              player.play(AssetSource("voice/test.mp3"));
            },
            label: Text(''),
          ),
          Padding(padding: EdgeInsets.all(25)),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              icon: Icon(Icons.stop),
              onPressed: () {
                player.stop();
              },
              label: Text('')),
          Padding(padding: EdgeInsets.all(25)),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              icon: Icon(Icons.pause),
              onPressed: () {
                player.pause();
              },
              label: Text(' ')),
        ]),
        Divider(
          height: 35,
          thickness: 5,
          color: Colors.black,
        ),
      ]),
    );
  }
}
