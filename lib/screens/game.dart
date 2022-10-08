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
                    _rabit(),
                    _ball(),
                    _bear(),
                    _bicycle(),
                    _book(),
                    _clink(),
                    _cubes(),
                    _hourse(),
                    _puzzle(),
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

  Positioned _bear() {
    double top = 1.7;
    double height = 160;
    double left = 16;
    double width = 3;
    String assetSource = "game/voice/bear.mp3";
    String itemName = "Bear";
    return _item(
        top: top,
        height: height,
        left: left,
        width: width,
        assetSource: assetSource,
        itemName: itemName);
  }

  Positioned _bicycle() {
    double top = 4;
    double height = 130;
    double left = 16;
    double width = 3;
    String assetSource = "game/voice/Bicycle.mp3";
    String itemName = "Bicycle";
    return _item(
        top: top,
        height: height,
        left: left,
        width: width,
        assetSource: assetSource,
        itemName: itemName);
  }

  Positioned _book() {
    double top = 33;
    double height = 70;
    double left = 16;
    double width = 3.5;
    String assetSource = "game/voice/Book.mp3";
    String itemName = "Book";
    return _item(
        top: top,
        height: height,
        left: left,
        width: width,
        assetSource: assetSource,
        itemName: itemName);
  }

  Positioned _clink() {
    double top = 33;
    double height = 80;
    double left = 1.55;
    double width = 3;
    String assetSource = "game/voice/Clink.mp3";
    String itemName = "Clink";
    return _item(
        top: top,
        height: height,
        left: left,
        width: width,
        assetSource: assetSource,
        itemName: itemName);
  }

  Positioned _cubes() {
    double top = 33;
    double height = 80;
    double left = 2.7;
    double width = 5.5;
    String assetSource = "game/voice/Cubes.mp3";
    String itemName = "Cubes";
    return _item(
        top: top,
        height: height,
        left: left,
        width: width,
        assetSource: assetSource,
        itemName: itemName);
  }

  Positioned _hourse() {
    double top = 1.9;
    double height = 180;
    double left = 1.5;
    double width = 3;
    String assetSource = "game/voice/hourse.mp3";
    String itemName = "Hourse";
    return _item(
        top: top,
        height: height,
        left: left,
        width: width,
        assetSource: assetSource,
        itemName: itemName);
  }

  Positioned _puzzle() {
    double top = 4.45;
    double height = 70;
    double left = 2.4;
    double width = 3.5;
    String assetSource = "game/voice/Puzzle.mp3";
    String itemName = "Puzzle";
    return _item(
        top: top,
        height: height,
        left: left,
        width: width,
        assetSource: assetSource,
        itemName: itemName);
  }
}
