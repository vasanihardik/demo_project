import 'package:flutter/material.dart';
import 'package:quiz_demo/rounded_text.dart';
import 'package:quiz_demo/text_view_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.dataSummary});

  final List<Map<String, Object>> dataSummary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
          child: Column(
            children: dataSummary.map((data) {
              return Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: const BoxDecoration(gradient : LinearGradient(
                      colors: [Colors.transparent,Colors.green],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topCenter
                  )) ,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RoundedText(
                        indexNo: ((data['question_index'] as int) + 1).toString(),
                        answerCorrect: (data['correct_ans'] as String ==
                            data['user_answer'] as String),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextViewItem(
                              value: data['question'] as String,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextViewItem(
                              value: data['correct_ans'] as String,
                            ),
                            TextViewItem(
                              value: data['user_answer'] as String,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
    );
  }
}
