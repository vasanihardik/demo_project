import 'package:flutter/material.dart';
import 'package:quiz_demo/utils/extensions.dart';

class GridViewSupplementsItem extends StatelessWidget {
  const GridViewSupplementsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 8,
      shadowColor: Colors.black,
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              Expanded(
                  child: Text('Blood Sugar & Metabolism',
                      style: TextStyle(
                        fontSize: 12,
                        color: HexColor.fromHex('#404040'),
                        fontFamily: 'OpenSens',
                        fontWeight: FontWeight.w500,
                      ))),
              Image.asset(
                "assets/images/place_holder.png",
                height: 28,
                width: 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
