import 'package:elearning/Home.dart';
import 'package:elearning/components/quistion.dart';
import 'package:elearning/shared/colors.dart';
import 'package:elearning/shared/widgets.dart';
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
            automaticallyImplyLeading: false,
            leading: MyWidgets.BtnToGo_Home(context),
            backgroundColor: MyColors.appBarColor,
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
          body: Container(
            decoration: MyColors.background_BoxDecoration(),
            child: const TabBarView(children: [
              Question(
                  assetImage: AssetImage("images/hi.jpg"),
                  quesNo: "1",
                  question:
                      "When you greet your friends in the morning, you usually say:",
                  rightanswer: "Good Morning",
                  answer_1: "Good night",
                  answer_2: "Good Morning",
                  answer_3: "Good Afternoon",
                  answer_4: "Good Evening"),
              Question(
                  assetImage: AssetImage("images/name.jfif"),
                  quesNo: "2",
                  question: "When you formally introduce oneself, you say:",
                  rightanswer: "A+C",
                  answer_1: "My name is",
                  answer_2: "My name are",
                  answer_3: "I am ",
                  answer_4: "A+C"),
              Question(
                  assetImage: AssetImage("images/mango.jpg"),
                  quesNo: "3",
                  question: "What color or colors does a Mango fruit have?",
                  rightanswer: "All",
                  answer_1: "Yellow",
                  answer_2: "Amber",
                  answer_3: "Orange",
                  answer_4: "All"),
              Question(
                  assetImage: AssetImage("images/sanfransisco.jpg"),
                  quesNo: "4",
                  question: "What city is this bridge located in?",
                  rightanswer: "San Francisco",
                  answer_1: "Manhattan",
                  answer_2: "Chicago",
                  answer_3: "San Francisco",
                  answer_4: "New York"),
              Question(
                  assetImage: AssetImage("images/foreign.jpg"),
                  quesNo: "5",
                  question: "The non-native speaker is known as what?",
                  rightanswer: "Foreign",
                  answer_1: "Foreign",
                  answer_2: "Citizen",
                  answer_3: "African",
                  answer_4: "Asian"),
              Question(
                  assetImage: AssetImage("images/enjoy.jfif"),
                  quesNo: "6",
                  question: "Have you enjoyed with us? 😊",
                  rightanswer: "Of Course",
                  answer_1: "Of Course",
                  answer_2: "Noo!",
                  answer_3: "Not Sure",
                  answer_4: "Terrible")
            ]),
          ),
        ));
  }
}
