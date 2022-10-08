// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

final audioPlayer = AudioPlayer();

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

var itemName = TextEditingController(text: "Click To Learn 😀");

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    double screenMaxWidth = MediaQuery.of(context).size.width > 500
        ? 500
        : MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          itemName.text,
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: screenMaxWidth,
          child: ListView(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                          "http://www.clipartbest.com/cliparts/jTx/a7M/jTxa7MABc.jpg"),
                    ),
                  ),
                  Positioned(
                    top: screenMaxWidth / 1.5625,
                    height: 260,
                    left: screenMaxWidth / 2.2222,
                    width: screenMaxWidth / 6.25,
                    child: GestureDetector(
                      child: Container(color: Colors.red.withAlpha(130)),
                      onTap: () {
                        audioPlayer
                            .play(AssetSource("game/voice/rabbit.mp3"));
                        print("Rabit");
                        setState(() {
                          itemName.text = "Rabit";
                        });
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
