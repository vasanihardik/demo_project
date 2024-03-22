import 'package:flutter/material.dart';
import 'package:quiz_demo/home/PotraiteViewItem.dart';
import 'package:quiz_demo/home/SquareViewItem.dart';
import 'package:quiz_demo/home/SquareViewPosterItem.dart';
import 'package:quiz_demo/utils/extensions.dart';

class SquareViewPosterHorizontal extends StatelessWidget {
  const SquareViewPosterHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Text(
                  "Advancing Health Through Whole Food Nutrition",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontFamily: 'OpenSens',
                    color: HexColor.fromHex('#404040'),
                  ),
                ),
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    fontFamily: 'OpenSens',
                    color: HexColor.fromHex('#00573D'),
                    decoration: TextDecoration.underline),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 178,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: MediaQuery.removePadding(
              context: context,
              removeBottom: true,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    for (int i = 0; i < 10; i++) const SquareViewPosterItem()
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
