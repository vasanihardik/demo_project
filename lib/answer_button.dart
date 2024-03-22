import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(answerText,
            textAlign: TextAlign.center,
            style: GoogleFonts.readexPro(
                textStyle:
                    const TextStyle(fontSize: 14, color: Colors.white))));
  }
}
