import 'package:flutter/material.dart';
import 'package:quiz_demo/data/questions.dart';
import 'package:quiz_demo/intro_screen.dart';
import 'package:quiz_demo/questions.dart';
import 'package:quiz_demo/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String screenName = 'intro-screen';
  List<String> selectedAnswer = [];

  void redirectScreen() {
    setState(() {
      screenName = 'quiz-screen';
    });
  }

  void restartScreen() {
    setState(() {
      selectedAnswer = [];
      screenName = 'quiz-screen';
    });
  }


  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        screenName = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    Widget? widget;
    if (screenName == 'intro-screen') {
      widget = IntroScreen(redirectScreen);
    } else if (screenName == 'quiz-screen') {
      widget = Questions(selectedAnswer: chooseAnswer);
    } else {
      widget = ResultScreen(
        answer: selectedAnswer,
        restartScreen: restartScreen,
      );
    }

    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.purple,
                Colors.deepOrange,
              ], begin: Alignment.bottomLeft, end: Alignment.topCenter)),
          child: widget,
        ));
  }
}
