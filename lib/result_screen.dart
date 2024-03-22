import 'package:flutter/material.dart';
import 'package:quiz_demo/data/questions.dart';
import 'package:quiz_demo/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.answer,required this.restartScreen});

  final List<String> answer;
  final void Function()  restartScreen;


  List<Map<String,Object>> getSummaryData(){
    List<Map<String,Object>> summaryData =[];
    for(int i= 0;i<answer.length;i++){
      summaryData.add({
        'question_index':i,
        'question': questions[i].text,
        'correct_ans':questions[i].answers[0],
        'user_answer':answer[i]
      });
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQue = questions.length;
    final totalCorrect = summaryData.where((data) => data['correct_ans'] == data['user_answer']).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('Your answer $totalCorrect out of $totalQue Correctly!'),
            const SizedBox(height: 50),
            QuestionSummary(dataSummary: summaryData),
            const SizedBox(height: 25),
            OutlinedButton.icon(
              onPressed: restartScreen,
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(10),
              ),
              icon: const Icon(Icons.refresh,
                  color: Colors.white
              ),
              label: const Text(
                'Re-Start Quiz',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],

        ),
      ),

    );
  }
}
