// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    double screenMaxWidth = 500;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: screenMaxWidth,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.amberAccent,
                  child: Center(
                      child: Text(
                    "itemName",
                    style: TextStyle(fontSize: 30),
                  )),
                ),
              ),
              _GameFrame(),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  color: Colors.pinkAccent,
                  child: Text("item data here: bla bla bla..."),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GameFrame extends StatefulWidget {
  const _GameFrame({
    Key? key,
  }) : super(key: key);

  @override
  State<_GameFrame> createState() => _GameFrameState();
}

class _GameFrameState extends State<_GameFrame> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          fit: BoxFit.contain,
          image: NetworkImage(
              "http://www.clipartbest.com/cliparts/jTx/a7M/jTxa7MABc.jpg"),
        ),
        Positioned(
          top: 330,
          left: 240,
          height: 140,
          width: 70,
          child: GestureDetector(
            onTap: () {
              print("Rabit");
              setState(() {
                // itemName += " R|";
              });
            },
          ),
        )
      ],
    );
  }
}
