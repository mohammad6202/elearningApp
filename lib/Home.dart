// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:elearning/screens/game.dart';
import 'package:elearning/screens/pdf.dart';
import 'package:elearning/screens/quizz.dart';
import 'package:elearning/screens/video.dart';
import 'package:elearning/screens/voice.dart';
import 'package:elearning/shared/images.dart';
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
      color: Colors.cyan.shade400,
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
      body: Container(
        decoration: MyColors.background_BoxDecoration(),
        child: ListView(
          padding: EdgeInsets.only(top: 30),
          children: [
            MyImages.getHomeLogoImg(),
            _homeText,
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
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
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
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
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
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
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
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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

  final _homeText = Padding(
    padding: const EdgeInsets.only(top: 8, bottom: 8),
    child: const Text(
      "Learn how you want to learn",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontFamily: 'Cinzel',
      ),
    ),
  );
}
