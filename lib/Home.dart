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
          children: [
            _defPadding,
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
                _elevatedButton(Screens.game, context),
              ],
            ),
            _defPadding,
          ],
        ),
      ),
    );
  }
}

var _defPadding = Padding(padding: EdgeInsets.only(top: 30));

final _homeText = Padding(
  padding: const EdgeInsets.only(top: 0, bottom: 8),
  child: const Text(
    "Learn British English the way you want to",
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
    child: _BtnContent(screenName: screenName),
  );
}

void goTo(Screens screenName, BuildContext context) {
  Navigator.pushNamed(context, screenName.name);
}

SizedBox _BtnContent({
  required Screens screenName,
  String imageType = "gif",
  double btnWidth = 130,
  double btnHeight = 110,
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
