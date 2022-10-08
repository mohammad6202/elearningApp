import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/Home.dart';
import 'package:myapp/screens/onBoarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
              return Home();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              bottom: 500,
              left: 100,
              right: 100,
              child: Image.asset('images/logo.png'),
            ),
            Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Column(
                  children: [
                    Center(
                      child: Text(
                        "E-Learn App",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Image(image: AssetImage("images/loading.gif")),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
