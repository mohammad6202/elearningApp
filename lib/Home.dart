// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:elearning/screens/game.dart';
import 'package:elearning/screens/pdf.dart';
import 'package:elearning/screens/quizz.dart';
import 'package:elearning/screens/video.dart';
import 'package:elearning/screens/voice.dart';
import 'package:flutter/material.dart';
import 'package:elearning/shared/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var buttonBoxDecoration = BoxDecoration(
      //
      color: Colors.cyan.shade400,
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: const Color.fromARGB(255, 84, 83, 83)),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            SizedBox(
                height: 150,
                width: 150,
                child: Image(image: AssetImage("images/ee.png"))),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Choose the way of learning",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return Video();
                      })));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 140,
                      width: 140,
                      decoration: buttonBoxDecoration,
                      child: Column(
                        children: [
                          Image(image: AssetImage("images/dd.png")),
                          const Text(
                            "Videos",
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Voice();
                    }));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 140,
                    width: 140,
                    decoration: buttonBoxDecoration,
                    child: Column(
                      children: [
                        Image(height: 115, image: AssetImage("images/aa.png")),
                        const Text(
                          "Audios",
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PdfBook();
                    }));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 140,
                    width: 140,
                    decoration: buttonBoxDecoration,
                    child: Column(
                      children: [
                        Image(height: 115, image: AssetImage("images/b.png")),
                        const Text(
                          "Books",
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Quizz();
                    }));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 140,
                    width: 140,
                    decoration: buttonBoxDecoration,
                    child: Column(
                      children: [
                        Image(height: 115, image: AssetImage("images/l.png")),
                        const Text(
                          "Quizz",
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Game();
                }));
              },
              child: Container(
                alignment: Alignment.center,
                height: 140,
                width: 290,
                decoration: buttonBoxDecoration,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Play a Game",
                      textAlign: TextAlign.start,
                    ),
                    Image(image: AssetImage("images/gg.gif")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
