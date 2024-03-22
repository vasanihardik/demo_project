import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_demo/answer_button.dart';
import 'package:quiz_demo/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key,required this.selectedAnswer});

  final void Function(String answer) selectedAnswer;
  @override
  State<StatefulWidget> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var questionIndex = 0;

  void changeQuestion(String selectedAns) {
    widget.selectedAnswer(selectedAns);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (questionIndex == questions.length) {
      questionIndex = 0;
    }

    var questionsList = questions[questionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                questionsList.text,
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              ...questionsList.shuffleList.map(
                    (answerText) => AnswerButton(
                        answerText: answerText,
                        onTap: () {
                          changeQuestion(answerText);
                        }),
                  )
            ],
          )),
    );
    /*return Scaffold(
      appBar: AppBar(),
      body:,
    );*/
  }
}
