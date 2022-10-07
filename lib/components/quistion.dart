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
  // Color correct = Colors.pink.shade200;
  // Color wrong = Colors.pink.shade200;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
           Image(height: 150, image: widget.assetImage),
          Text(
            "Queston No ${widget.quesNo.toString()}",
            textAlign: TextAlign.start,
          ),
          const Divider(
            thickness: 4,
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            height: 70,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.pink[200],
                borderRadius: BorderRadius.circular(50)),
            child: Text(
              widget.question.toString(),
              style: const TextStyle(fontSize: 22),
            ),
          ),
          const SizedBox(
            height: 60,
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
                  decoration: BoxDecoration(
                      color: Colors.pink[200], shape: BoxShape.circle),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  child: Text(
                    widget.answer_1.toString(),
                    style: const TextStyle(fontSize: 18),
                  )),
            ),
            const SizedBox(
              width: 40,
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
                  decoration: BoxDecoration(
                      color: Colors.pink[200], shape: BoxShape.circle),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  child: Text(
                    widget.answer_2.toString(),
                    style: const TextStyle(fontSize: 18),
                  )),
            ),
          ]),
          const SizedBox(
            height: 40,
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
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.pink[200], shape: BoxShape.circle),
                  child: Text(
                    widget.answer_3.toString(),
                    style: const TextStyle(fontSize: 18),
                  )),
            ),
            const SizedBox(
              width: 40,
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
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.pink[200], shape: BoxShape.circle),
                  child: Text(
                    widget.answer_4.toString(),
                    style: const TextStyle(fontSize: 18),
                  )),
            ),
          ])
        ],
      ),
    );
  }
}
