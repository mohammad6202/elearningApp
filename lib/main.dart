import 'package:elearning/screens/game.dart';
import 'package:elearning/screens/onBoarding.dart';
import 'package:elearning/screens/book.dart';
import 'package:elearning/screens/quiz.dart';
import 'package:elearning/screens/splash.dart';
import 'package:elearning/screens/video.dart';
import 'package:elearning/screens/voice.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(),
    themeMode: ThemeMode.dark,
    home: const MyApp(),
    debugShowCheckedModeBanner: false,
    routes: _myRoutes,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}

Map<String, Widget Function(BuildContext)> _myRoutes = {
  "video": (context) => Video(),
  "voice": (context) => Voice(),
  "book": (context) => PdfBook(),
  "quiz": (context) => const Quizz(),
  "game": (context) => const Game(),
};

enum Screens {
  video,
  voice,
  book,
  quiz,
  game,
}
