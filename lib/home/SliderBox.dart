import 'package:flutter/material.dart';

class SliderBox extends StatelessWidget {
  final Widget child;

  const SliderBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
