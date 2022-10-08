import 'package:elearning/components/alerts.dart';
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

class _QuestionState extends State<Question> {
  Color contColor = Color.fromARGB(255, 245, 139, 74);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(color: const Color.fromARGB(255, 56, 54, 54)),
      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image(height: 200, width: 150, image: widget.assetImage),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Queston No ${widget.quesNo.toString()}",
            textAlign: TextAlign.start,
            style: const TextStyle(color: Colors.white),
          ),
          const Divider(
            color: Colors.white,
            thickness: 4,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            alignment: Alignment.center,
            height: 100,
            width: 250,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 84, 83, 83),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              widget.question.toString(),
              style: const TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 25,
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
                  padding: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 135, 171, 255),
                            Color.fromARGB(255, 63, 77, 151),
                            Color.fromARGB(255, 95, 149, 255)
                          ]),
                      // color: contColor,
                      borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.center,
                  height: 110,
                  width: 110,
                  child: Text(
                    "A. ${widget.answer_1.toString()}",
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ),
            const SizedBox(
              width: 30,
            ),
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
                  padding: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      // color: contColor,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 135, 171, 255),
                            Color.fromARGB(255, 63, 77, 151),
                            Color.fromARGB(255, 95, 149, 255)
                          ]),
                      borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.center,
                  height: 110,
                  width: 110,
                  child: Text(
                    "B. ${widget.answer_2.toString()}",
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
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
                  padding: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 135, 171, 255),
                            Color.fromARGB(255, 63, 77, 151),
                            Color.fromARGB(255, 95, 149, 255)
                          ]),
                      // color: contColor,
                      borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.center,
                  height: 110,
                  width: 110,
                  child: Text(
                    "C. ${widget.answer_3.toString()}",
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ),
            const SizedBox(
              width: 30,
            ),
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
                  padding: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 135, 171, 255),
                            Color.fromARGB(255, 63, 77, 151),
                            Color.fromARGB(255, 95, 149, 255)
                          ]),
                      // color: contColor,
                      borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.center,
                  height: 110,
                  width: 110,
                  child: Text(
                    "D. ${widget.answer_4.toString()}",
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ),
          ])
        ],
      ),
    );
  }
}
