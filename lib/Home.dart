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
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromARGB(255, 20, 224, 255),
          Color.fromARGB(255, 5, 159, 255),
          Color.fromARGB(255, 0, 51, 255),
        ],
      ),
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff03a1e9),
            Color(0xff085795),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        )),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 251, 235, 235),
              radius: 50,
              child: Image(image: AssetImage("images/av.png")),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Wlcome to the English World",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Choose the way of learning",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 50,
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
                    child: const Text("Videos"),
                  ),
                ),
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
                    child: const Text("Audios"),
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
                    child: const Text("Books"),
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
                    child: const Text("Quizzes"),
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
                child: const Text("Play a Game"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
