import 'package:flutter/material.dart';

class RoundedText extends StatelessWidget {
  const RoundedText({super.key, required this.indexNo, required this.answerCorrect});

  final String indexNo;
  final bool answerCorrect;

  @override
  Widget build(context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: answerCorrect ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(100)
      ),
      alignment: Alignment.center,
      child: Text(
        indexNo,
      ),
    );
  }
}
