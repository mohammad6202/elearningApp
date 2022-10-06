import 'package:elearning/screens/quizz.dart';
import 'package:elearning/screens/video.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        // color: Colors.pink.shade200,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 251, 235, 235),
              radius: 50,
              child: Image(image: AssetImage("images/av.png")),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Wlcome to the English World",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Choose the way of learning",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
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
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Videos"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Audios"),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Books"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Quizz();
                    }));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Quizzes"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
