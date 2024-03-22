import 'package:flutter/material.dart';
import 'package:quiz_demo/utils/extensions.dart';

class PortraitViewItem extends StatelessWidget {
  const PortraitViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 8,
      shadowColor: Colors.black,
      child: SizedBox(
        height: 180,
        width: 128,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Column(
            children: [
              Image.asset(
                "assets/images/portraite_place_holder.png",
                height: 100,
                width: 60,
              ),
              const SizedBox(
                height: 4,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'E-Z Mg™',
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 12,
                    color: HexColor.fromHex('#404040'),
                    fontFamily: 'OpenSens',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ), Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Central Nervous system health*',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 12,
                    color: HexColor.fromHex('#404040'),
                    fontFamily: 'OpenSens',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
