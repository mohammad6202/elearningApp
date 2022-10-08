// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

var itemName = TextEditingController(text: "xx");

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    double screenMaxWidth = 500;
    double screenHeight = MediaQuery.of(context).size.height;
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
                  Image(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        "http://www.clipartbest.com/cliparts/jTx/a7M/jTxa7MABc.jpg"),
                  ),
                  Positioned(
                    top: 320,
                    height: 160,
                    left: 230,
                    width: 80,
                    child: GestureDetector(
                      child: Container(color: Colors.red.withAlpha(130)),
                      onTap: () {
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
