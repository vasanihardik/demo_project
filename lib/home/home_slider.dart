import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:quiz_demo/home/SliderBox.dart';
import 'package:quiz_demo/utils/extensions.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key, required this.list});

  final List<Widget> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.white,
      child: PageIndicatorContainer(
        indicatorColor: HexColor.fromHex('#C4C4C4'),
        indicatorSelectorColor: Colors.white,
        length: list.length,
        indicatorSpace: 1.0,

        child: PageView(
          children: list,
        ),
      ),
    );
  }
}
