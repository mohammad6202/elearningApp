import 'package:elearning/Home.dart';
import 'package:elearning/components/quistion.dart';
import 'package:flutter/material.dart';

//Mohammad Ibrahim Almseidin

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Home();
                    })));
                  },
                  icon: const Icon(Icons.home_filled))
            ],
            backgroundColor: Colors.pinkAccent.shade200,
            centerTitle: true,
            title: const Text("Fun Quizz"),
            bottom: const TabBar(tabs: [
              Icon(Icons.quiz),
              Icon(Icons.quiz),
              Icon(Icons.quiz),
              Icon(Icons.quiz),
              Icon(Icons.quiz),
              Icon(Icons.quiz)
            ]),
          ),
          body: const TabBarView(children: [
            Question(
              quesNo: "1",
              question: "hello",
              rightanswer: "rightanswer",
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              assetImage: AssetImage(""),
            ),
            Question(
              quesNo: "2",
              question: "hello",
              rightanswer: "rightanswer",
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              assetImage: AssetImage(""),
            ),
            Question(
              quesNo: "3",
              question: "hello",
              rightanswer: "answer_1",
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              assetImage: AssetImage(""),
            ),
            Question(
              quesNo: "4",
              question: "hello",
              rightanswer: "answer_2",
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              assetImage: AssetImage(""),
            ),
            Question(
              quesNo: "5",
              question: "hello",
              rightanswer: "answer_3",
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              assetImage: AssetImage(""),
            ),
            Question(
              quesNo: "6",
              question: "hello",
              rightanswer: "answer_4",
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              assetImage: AssetImage(""),
            ),
          ]),
        ));
  }
}
