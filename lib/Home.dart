// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, no_leading_underscores_for_local_identifiers

import 'package:elearning/main.dart';
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
    return Scaffold(
      body: Container(
        decoration: MyColors.background_BoxDecoration(),
        child: ListView(
          padding: EdgeInsets.only(top: 30),
          children: [
            MyImages.getHomeLogoImg(),
            _homeText,
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 14,
              runSpacing: 20,
              children: [
                _elevatedButton(Screens.video, context),
                _elevatedButton(Screens.voice, context),
                _elevatedButton(Screens.book, context),
                _elevatedButton(Screens.quiz, context),
                // Game ElevatedButton
                ElevatedButton(
                  onPressed: () => goTo(Screens.game, context),
                  child: _HomeBtn(
                    screenName: Screens.game,
                    imageType: "gif",
                    btnWidth: 300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

final _homeText = Padding(
  padding: const EdgeInsets.only(top: 8, bottom: 8),
  child: const Text(
    "Learn the way you want to learn britain english",
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 24,
      color: Colors.white,
      fontFamily: 'Cinzel',
    ),
  ),
);

ElevatedButton _elevatedButton(Screens screenName, BuildContext context) {
  return ElevatedButton(
    onPressed: () => goTo(screenName, context),
    child: _HomeBtn(screenName: screenName),
  );
}

void goTo(Screens screenName, BuildContext context) {
  Navigator.pushNamed(context, screenName.name);
}

SizedBox _HomeBtn({
  required Screens screenName,
  String imageType = "png",
  double btnWidth = 140,
  double btnHeight = 140,
}) {
  String _screenName = screenName.name;
  return SizedBox(
    height: btnHeight,
    width: btnWidth,
    child: Column(
      children: [
        Expanded(
          child: Image(
            image: AssetImage("images/$_screenName.$imageType"),
          ),
        ),
        Text(
          _screenName.toUpperCase(),
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
      ],
    ),
  );
}
