import 'package:elearning/components/alerts.dart';
import 'package:elearning/shared/colors.dart';
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({
    super.key,
    required this.question,
    required this.rightanswer,
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
    required this.quesNo,
    required this.assetImage,
  });

  final String? question;
  final String? answer_1;
  final String? answer_2;
  final String? answer_3;
  final String? answer_4;
  final String? rightanswer;
  final String? quesNo;
  final AssetImage assetImage;

  @override
  State<Question> createState() => _QuestionState();
}

double btnHeight = 100;
double btnWidth = 140;
const sizedBox = SizedBox(
  width: 20,
  height: 20,
);

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image(
              height: 200,
              image: widget.assetImage,
            ),
            Align(
              child: Text(
                "[  Queston No ${widget.quesNo.toString()}  ]",
                style: const TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.black,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(14, 8, 14, 16),
          // ToRework: if needed by other team members.
          child: Text(
            widget.question.toString(),
            style: const TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold
                // backgroundColor: Color.fromARGB(255, 84, 83, 83),
                ),
            textAlign: TextAlign.center,
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            onTap: () {
              if (widget.answer_1 == widget.rightanswer) {
                showDialog(
                    context: context,
                    builder: ((context) {
                      return const Correct();
                    }));
              } else {
                showDialog(
                    context: context,
                    builder: ((context) {
                      return const Wrong();
                    }));
              }
            },
            child: Container(
                padding: const EdgeInsets.all(20),
                decoration: MyColors.buttonBackground(btn_colors.blue),
                alignment: Alignment.center,
                height: btnHeight,
                width: btnWidth,
                child: Text(
                  "A.\n${widget.answer_1.toString()}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
          sizedBox,
          GestureDetector(
            onTap: () {
              if (widget.answer_2 == widget.rightanswer) {
                showDialog(
                    context: context,
                    builder: ((context) {
                      return const Correct();
                    }));
              } else {
                showDialog(
                    context: context,
                    builder: ((context) {
                      return const Wrong();
                    }));
              }
            },
            child: Container(
                padding: const EdgeInsets.all(20),
                decoration: MyColors.buttonBackground(btn_colors.red),
                alignment: Alignment.center,
                height: btnHeight,
                width: btnWidth,
                child: Text(
                  "B.\n${widget.answer_2.toString()}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
        ]),
        sizedBox,
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            onTap: () {
              if (widget.answer_3 == widget.rightanswer) {
                showDialog(
                    context: context,
                    builder: ((context) {
                      return const Correct();
                    }));
              } else {
                showDialog(
                    context: context,
                    builder: ((context) {
                      return const Wrong();
                    }));
              }
            },
            child: Container(
                padding: const EdgeInsets.all(20),
                decoration: MyColors.buttonBackground(btn_colors.orange),
                alignment: Alignment.center,
                height: btnHeight,
                width: btnWidth,
                child: Text(
                  "C.\n${widget.answer_3.toString()}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
          sizedBox,
          GestureDetector(
            onTap: () {
              if (widget.answer_4 == widget.rightanswer) {
                showDialog(
                    context: context,
                    builder: ((context) {
                      return const Correct();
                    }));
              } else {
                showDialog(
                    context: context,
                    builder: ((context) {
                      return const Wrong();
                    }));
              }
            },
            child: Container(
                padding: const EdgeInsets.all(20),
                decoration: MyColors.buttonBackground(btn_colors.green),
                alignment: Alignment.center,
                height: btnHeight,
                width: btnWidth,
                child: Text(
                  "D.\n${widget.answer_4.toString()}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
        ])
      ],
    );
  }
}
