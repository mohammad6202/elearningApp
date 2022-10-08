import 'package:elearning/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: IntroductionScreen(
          pages: [
            PageViewModel(
              decoration: PageDecoration(
                  pageColor: Color.fromARGB(255, 56, 54, 54),
                  titleTextStyle:
                      TextStyle(color: Color.fromARGB(255, 223, 220, 220))),
              title: "Watch Video",
              bodyWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Videos shows are great source of 'real-life' English language and  help become familiar with different accents.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 223, 220, 220)),
                    ),
                  ),
                ],
              ),
              image: Center(child: Image.asset('images/watchVideo.png')),
            ),
            PageViewModel(
              decoration: PageDecoration(
                  pageColor: Color.fromARGB(255, 56, 54, 54),
                  titleTextStyle:
                      TextStyle(color: Color.fromARGB(255, 223, 220, 220))),
              title: "Listen to audio  ",
              bodyWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Listening to conversational English enables you to learn new words and expressions by hearing them repeatedly. ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 223, 220, 220)),
                    ),
                  ),
                ],
              ),
              image: Center(child: Image.asset('images/listenToAudio.jpg')),
            ),
            PageViewModel(
              decoration: PageDecoration(
                  pageColor: Color.fromARGB(255, 56, 54, 54),
                  titleTextStyle:
                      TextStyle(color: Color.fromARGB(255, 223, 220, 220))),
              title: "Read Book",
              bodyWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Reading is one of the most fun and effective ways to help improve your English language skills ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 223, 220, 220)),
                    ),
                  ),
                ],
              ),
              image: Center(child: Image.asset('images/readingBook.png')),
            ),
            PageViewModel(
              decoration: PageDecoration(
                  pageColor: Color.fromARGB(255, 56, 54, 54),
                  titleTextStyle:
                      TextStyle(color: Color.fromARGB(255, 223, 220, 220))),
              title: "Take Quiz",
              bodyWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "A quiz is a good way for a pupil to identify and take ownership of their knowledge gaps. ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 223, 220, 220)),
                    ),
                  ),
                ],
              ),
              image: Center(child: Image.asset('images/takeQuiz.jpg')),
            ),
          ],
          onDone: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => SplashScreen()));
          },
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            color: Color.fromARGB(255, 56, 54, 54),
          ),
          done: const Text("Done",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
          dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: Colors.indigo.shade800,
              color: Color.fromARGB(255, 56, 54, 54),
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0))),
        ),
      ),
    );
  }
}
