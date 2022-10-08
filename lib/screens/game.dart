// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

final audioPlayer = AudioPlayer();

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

var titleItemText = TextEditingController(text: "Click To Learn 😀");
double screenMaxWidth = 500;

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    screenMaxWidth = MediaQuery.of(context).size.width > screenMaxWidth
        ? screenMaxWidth
        : MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          titleItemText.text,
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
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
                          image: AssetImage("assets/game/image/gameImage.jpg")),
                    ),
                    // _rabit(),
                    _ball(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Positioned _item({
    required double top,
    required double height,
    required double left,
    required double width,
    required String assetSource,
    required String itemName,
  }) {
    return Positioned(
      top: screenMaxWidth / top,
      height: height,
      left: screenMaxWidth / left,
      width: screenMaxWidth / width,
      child: GestureDetector(
        child: Container(color: Colors.red.withAlpha(130)),
        onTap: () {
          audioPlayer.play(AssetSource(assetSource));
          setState(() {
            titleItemText.text = itemName;
          });
        },
      ),
    );
  }

  Positioned _rabit() {
    double top = 1.5625;
    double height = 260;
    double left = 2.2222;
    double width = 6.25;
    String assetSource = "game/voice/rabbit.mp3";
    String itemName = "Rabit";
    return _item(
        top: top,
        height: height,
        left: left,
        width: width,
        assetSource: assetSource,
        itemName: itemName);
  }

  Positioned _ball() {
    double top = 2.444;
    double height = 80;
    double left = 2.18;
    double width = 5;
    String assetSource = "game/voice/Ball.mp3";
    String itemName = "Ball";
    return _item(
        top: top,
        height: height,
        left: left,
        width: width,
        assetSource: assetSource,
        itemName: itemName);
  }
}
