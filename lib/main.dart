import 'package:flutter/material.dart';
import 'package:myapp/screens/onBoarding.dart';
import 'package:myapp/screens/pdf.dart';
import 'package:myapp/screens/splash.dart';

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
<<<<<<< HEAD
    return OnBoardingScreen();
  }
=======
    return const Home();
  } // ramzi comment
>>>>>>> 7155920434b4e3bba64bc86dabe5aed3ab0eda48
}
