import 'dart:async';
import 'package:elearning/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool alreadyUsed = false;
  void getData() async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    alreadyUsed = prefs.getBool("alreadyUsed") ?? false;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return SignUp();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 56, 54, 54),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              width: 150,
              height: 150,
              child: Image.asset('images/logo.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    "E-Learn App",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image(
                    width: 200,
                    height: 200,
                    image: AssetImage("images/loadingN-unscreen.gif")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
