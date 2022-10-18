import 'package:elearning/screens/game.dart';
import 'package:elearning/screens/onBoarding.dart';
import 'package:elearning/screens/book.dart';
import 'package:elearning/screens/quiz.dart';
import 'package:elearning/screens/sign_up.dart';

import 'package:elearning/screens/splash.dart';
import 'package:elearning/screens/video.dart';
import 'package:elearning/screens/voice.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'Home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    theme: ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: _buttonStyle,
      ),
    ),
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
    return const OnBoardingScreen();
  }
}

Map<String, Widget Function(BuildContext)> _myRoutes = {
  "video": (context) => Video(),
  "voice": (context) => Voice(),
  "book": (context) => PdfBook(),
  "quiz": (context) => const Quizz(),
  "game": (context) => const Game(),
  "signup": (context) => SignUp(),
  "home": (context) => Home(),
};

enum Screens {
  video,
  voice,
  book,
  quiz,
  game,
  signup,
}

ButtonStyle _buttonStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.blue.shade800,
  shadowColor: Colors.blue,
  elevation: 10,
  side: const BorderSide(color: Colors.white, width: 1.4),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
);
