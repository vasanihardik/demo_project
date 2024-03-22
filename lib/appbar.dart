import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: const Text(
        'Quiz',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}



