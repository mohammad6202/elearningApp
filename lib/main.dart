import 'package:elearning/screens/onBoarding.dart';
import 'package:flutter/material.dart';


import 'Home.dart';

void main() {
  runApp(MaterialApp(
    themeMode: ThemeMode.dark,
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingScreen();
  }
}
