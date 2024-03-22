import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen(this.clickEvent,{super.key});
  final void Function()  clickEvent;

  @override
  Widget build(BuildContext context) {
   return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            height: 300,
            color: const Color.fromARGB(150,255, 255,255),
          ),
          const SizedBox(height: 50),
          const Text(
            "Learn the flutter quiz demo",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: clickEvent,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(10),
            ),
            icon: const Icon(Icons.arrow_right_alt,
                color: Colors.white
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
